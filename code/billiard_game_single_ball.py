import taichi as ti
import numpy as np

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

    while gui.running:
        gui.lines(begin=boundary_begin, end=boundary_end, radius=2)
        gui.circle(pos_wc, radius=pixel_radius)
        gui.show()
        if 1.0 - radius_wc > pos_wc[0] > radius_wc:
            pass
        else:
            velocity_wc[0] *= -1

        if 1.0 - radius_wc > pos_wc[1] > radius_wc:
            pass
        else:
            velocity_wc[1] *= -1

        velocity_wc_dir = velocity_wc / np.sqrt((velocity_wc ** 2).sum())
        drag_force = drag_coefficient * g * velocity_wc_dir

        velocity_wc_next_t = velocity_wc - drag_force * delta_t
        avg_velocity_vector = (velocity_wc + velocity_wc_next_t) / 2.
        s = avg_velocity_vector * delta_t  # displacement vector
        pos_wc += s
        pos_wc = np.minimum(1.0 - radius_wc, pos_wc)
        pos_wc = np.maximum(radius_wc, pos_wc)
        velocity_wc = velocity_wc_next_t
