import numpy as np

EPS = 1e-5


def rectify_positions_and_velocities(bound_x_low, bound_x_high, bound_y_low, bound_y_high, positions, velocities):
    # Corresponding module: rectify_p_v
    # positions: (num, 2)
    # velocities: (num, 2)
    original_p_shape = positions.shape
    original_v_shape = velocities.shape
    positions = positions.reshape(-1, 2)
    velocities = velocities.reshape(-1, 2)
    x_pos = positions[:, 0]
    y_pos = positions[:, 1]
    x_high_residual = np.maximum(0.0, x_pos - bound_x_high)
    y_high_residual = np.maximum(0.0, y_pos - bound_y_high)
    positions[:, 0] -= x_high_residual
    positions[:, 1] -= y_high_residual
    x_low_residual = np.minimum(0.0, x_pos - bound_x_low)
    y_low_residual = np.minimum(0.0, y_pos - bound_y_low)
    positions[:, 0] -= x_low_residual
    positions[:, 1] -= y_low_residual
    need_reverse_x_velocity = (x_high_residual > 0.) | (x_low_residual < 0.)
    need_reverse_y_velocity = (y_high_residual > 0.) | (y_low_residual < 0.)
    velocities[need_reverse_x_velocity, 0] *= -1
    velocities[need_reverse_y_velocity, 1] *= -1
    return positions.reshape(*original_p_shape), velocities.reshape(*original_v_shape)


def normalize_vector(vector):
    # Corresponding module: normalize, need sequential code
    length = np.sqrt((vector ** 2).sum())
    if np.isclose(length, 0.):
        return vector, length
    else:
        return vector / length, length


def calc_next_pos_and_velocity(pos_wc, velocity_wc, delta_t, drag_coefficient, g):
    # Corresponding verilog module: calc_next_p_and_v, the friction_coeff in calc_next_p_and_v should be drag_coefficient * g
    # Notice: Not tested in Python
    speed = np.sqrt((velocity_wc ** 2).sum())  # can use normalize_vector instead
    if np.isclose(speed, 0.0):
        next_pos_wc = pos_wc
        velocity_wc_next = np.zeros_like(velocity_wc)
    else:
        v_dir = velocity_wc / speed
        drag_force = drag_coefficient * g * v_dir
        velocity_wc_next = velocity_wc - delta_t * drag_force
        avg_velocity = (velocity_wc_next + velocity_wc) / 2.
        displacement = avg_velocity * delta_t
        next_pos_wc = pos_wc + displacement

    return next_pos_wc, velocity_wc_next


def two_ball_collides(ball1_pos, ball2_pos, radius):
    # Corresponding verilog module: ball_collision_detect
    # Notice: Not tested in Python
    diff = ball1_pos - ball2_pos
    return (diff ** 2).sum() < (2 * radius) ** 2


def rectify_positions_in_collision(ball1_pos, ball2_pos, radius):
    """
    Avoid multiple fake collision when both ball have overlap before collision and low speed after collision
    """
    # Corresponding module: rectify_p_in_collision
    # Notice: Not tested in Python
    collide_direction, length = normalize_vector(ball1_pos - ball2_pos)
    diff = 2 * radius - length + EPS
    rectified_ball1_pos = ball1_pos + diff / 2. * collide_direction
    rectified_ball2_pos = ball2_pos - diff / 2. * collide_direction
    return rectified_ball1_pos, rectified_ball2_pos


def calc_after_collision_velocity(ball1_pos, ball2_pos, ball1_velocity, ball2_velocity):
    # Corresponding module: calc_after_collision_v
    # Notice: Not tested in Python
    # position and velocity of local frame origin w.r.t world coordinate
    local_frame_origin_wc = ball1_pos
    local_frame_velocity_wc = ball1_velocity
    # lc for local coordinate
    ball2_v_lc = ball2_velocity - local_frame_velocity_wc
    ball2_pos_lc = ball2_pos - local_frame_origin_wc
    ball1_v_lc = np.zeros_like(ball1_velocity)
    ball1_pos_lc = np.zeros_like(ball1_pos)
    ball1_v_lc_dir_after_collision, _ = normalize_vector(ball1_pos_lc - ball2_pos_lc)

    ball2_v_lc_3D = np.array([*ball2_v_lc, 0.0])
    ball1_v_lc_dir_after_collision_3D = np.array([*ball1_v_lc_dir_after_collision, 0.0])
    z_direction = np.cross(ball2_v_lc_3D, ball1_v_lc_dir_after_collision_3D)
    z_direction[2] = 1. if z_direction[2] > 0. else -1.
    z_direction[:2] = 0
    ball2_v_lc_dir_after_collision_3D = np.cross(ball1_v_lc_dir_after_collision_3D, z_direction)
    ball2_v_lc_dir_after_collision, _ = normalize_vector(ball2_v_lc_dir_after_collision_3D[:2])

    transformation_matrix = np.stack([ball1_v_lc_dir_after_collision, ball2_v_lc_dir_after_collision], axis=0)
    speeds_after_collision = transformation_matrix @ (ball1_v_lc + ball2_v_lc).reshape(2,
                                                                                       1)  # use module mv.v for matrix vector multiplication
    speeds_after_collision = speeds_after_collision.squeeze()
    ball1_v_lc_after_collision = ball1_v_lc_dir_after_collision * speeds_after_collision[0]
    ball2_v_lc_after_collision = ball2_v_lc_dir_after_collision * speeds_after_collision[1]

    ball1_v_wc_after_collision = local_frame_velocity_wc + ball1_v_lc_after_collision
    ball2_v_wc_after_collision = local_frame_velocity_wc + ball2_v_lc_after_collision
    return ball1_v_wc_after_collision, ball2_v_wc_after_collision
