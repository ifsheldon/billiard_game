import taichi as ti
import numpy as np
from billiard_game_single_ball import rectify_positions_and_velocities

EPS = 1e-5


def normalize_vector(vector):
    length = np.sqrt((vector ** 2).sum())
    if np.isclose(length, 0.):
        return vector, length
    else:
        return vector / length, length


def calc_next_pos_and_velocity(pos_wc, velocity_wc, delta_t, drag_coefficient, g):
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
    diff = ball1_pos - ball2_pos
    return (diff ** 2).sum() < (2 * radius) ** 2


def rectify_positions_in_collision(ball1_pos, ball2_pos, radius):
    """
    Avoid multiple fake collision when both ball have overlap before collision and low speed after collision
    """
    collide_direction, length = normalize_vector(ball1_pos - ball2_pos)
    diff = 2 * radius - length + EPS
    rectified_ball1_pos = ball1_pos + diff / 2. * collide_direction
    rectified_ball2_pos = ball2_pos - diff / 2. * collide_direction
    return rectified_ball1_pos, rectified_ball2_pos


def calc_after_collision_velocity(ball1_pos, ball2_pos, ball1_velocity, ball2_velocity):
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
    speeds_after_collision = transformation_matrix @ (ball1_v_lc + ball2_v_lc).reshape(2, 1)
    speeds_after_collision = speeds_after_collision.squeeze()
    ball1_v_lc_after_collision = ball1_v_lc_dir_after_collision * speeds_after_collision[0]
    ball2_v_lc_after_collision = ball2_v_lc_dir_after_collision * speeds_after_collision[1]

    ball1_v_wc_after_collision = local_frame_velocity_wc + ball1_v_lc_after_collision
    ball2_v_wc_after_collision = local_frame_velocity_wc + ball2_v_lc_after_collision
    return ball1_v_wc_after_collision, ball2_v_wc_after_collision


if __name__ == "__main__":
    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60

    g = 9.8
    drag_coefficient = 0.0001

    # world space [0.0, 1.0] ^ 2
    cue_ball_velocity_magnitude_wc = 1.0
    ball_pixel_radius = 10
    ball_radius_wc = 1.0 / resolution[0] * ball_pixel_radius

    gui = ti.GUI("billiard_game_dual_ball", resolution)
    gui.fps_limit = fps
    delta_t = 1.0 / fps

    cue_ball_velocity_wc, _ = normalize_vector(np.random.rand(2))
    cue_ball_velocity_wc *= cue_ball_velocity_magnitude_wc
    cue_ball_pos_wc = np.ones(2) * 0.5
    ball_pos_wc = np.array([0.25, 0.25])
    ball_velocity_wc = np.zeros(2)

    boundary_begin = np.array([
        [0.0, 0.0],
        [0.0, 0.0],
        [1.0, 1.0],
        [1.0, 1.0]
    ])

    boundary_end = np.array([
        [1.0, 0.0],
        [0.0, 1.0],
        [1.0, 0.0],
        [0.0, 1.0]
    ])

    virtual_bound_x = [ball_radius_wc, 1.0 - ball_radius_wc]
    virtual_bound_y = [ball_radius_wc, 1.0 - ball_radius_wc]

    while gui.running:
        gui.lines(begin=boundary_begin, end=boundary_end, radius=2)
        gui.circle(cue_ball_pos_wc, radius=ball_pixel_radius)
        gui.circle(ball_pos_wc, radius=ball_pixel_radius)
        gui.show()
        cue_ball_pos_wc, cue_ball_velocity_wc = calc_next_pos_and_velocity(cue_ball_pos_wc, cue_ball_velocity_wc,
                                                                           delta_t, drag_coefficient, g)
        cue_ball_pos_wc, cue_ball_velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                                                 virtual_bound_y[0], virtual_bound_y[1],
                                                                                 cue_ball_pos_wc,
                                                                                 cue_ball_velocity_wc)
        ball_pos_wc, ball_velocity_wc = calc_next_pos_and_velocity(ball_pos_wc, ball_velocity_wc, delta_t)
        ball_pos_wc, ball_velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                                         virtual_bound_y[0], virtual_bound_y[1],
                                                                         ball_pos_wc, ball_velocity_wc)
        if two_ball_collides(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc):
            cue_ball_pos_wc, ball_pos_wc = rectify_positions_in_collision(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc)
            cue_ball_velocity_wc, ball_velocity_wc = calc_after_collision_velocity(cue_ball_pos_wc,
                                                                                   ball_pos_wc,
                                                                                   cue_ball_velocity_wc,
                                                                                   ball_velocity_wc)
