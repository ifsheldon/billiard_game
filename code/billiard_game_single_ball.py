import taichi as ti
import numpy as np

if __name__ == "__main__":
    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60
    # world space [0.0, 1.0] ^ 2
    velocity_magnitude_wc = 0.2
    pixel_radius = 10
    radius_wc = 1.0 / resolution[0] * pixel_radius

    velocity_wc = np.random.rand(2)
    velocity_wc /= np.sqrt((velocity_wc ** 2).sum())
    velocity_wc *= velocity_magnitude_wc
    pos_wc = np.random.rand(2)
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

        pos_wc += velocity_wc * delta_t
        pos_wc = np.minimum(1.0 - radius_wc, pos_wc)
        pos_wc = np.maximum(radius_wc, pos_wc)
