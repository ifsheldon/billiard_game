import taichi as ti
import numpy as np


def rectify_positions_and_velocities(bound_x_low, bound_x_high, bound_y_low, bound_y_high, positions, velocities):
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


if __name__ == "__main__":
    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60
    g = 9.8
    drag_coefficient = 0.01
    # world space [0.0, 1.0] ^ 2
    velocity_magnitude_wc = 1.0
    pixel_radius = 10
    radius_wc = 1.0 / resolution[0] * pixel_radius

    velocity_wc = np.random.rand(2)
    velocity_wc /= np.sqrt((velocity_wc ** 2).sum())
    velocity_wc *= velocity_magnitude_wc
    pos_wc = np.ones(2) * 0.5
    gui = ti.GUI("billiard_game_single_ball", resolution)
    gui.fps_limit = fps
    delta_t = 1.0 / fps

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

    virtual_bound_x = [radius_wc, 1.0 - radius_wc]
    virtual_bound_y = [radius_wc, 1.0 - radius_wc]

    while gui.running:
        gui.lines(begin=boundary_begin, end=boundary_end, radius=2)
        gui.circle(pos_wc, radius=pixel_radius)
        gui.show()
        velocity_wc_dir = velocity_wc / np.sqrt((velocity_wc ** 2).sum())
        drag_force = drag_coefficient * g * velocity_wc_dir

        velocity_wc_next_t = velocity_wc - drag_force * delta_t
        avg_velocity_vector = (velocity_wc + velocity_wc_next_t) / 2.
        s = avg_velocity_vector * delta_t  # displacement vector
        pos_wc += s
        pos_wc, velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                               virtual_bound_y[0], virtual_bound_y[1],
                                                               pos_wc, velocity_wc_next_t)
