import taichi as ti
import numpy as np
from functools import partial
from itertools import combinations

from billiard_game_dual_ball import normalize_vector, two_ball_collides, calc_next_pos_and_velocity, \
    calc_after_collision_velocity, rectify_positions_in_collision, rectify_positions_and_velocities


def score(ball_pos, ball_velocity):
    speed_sqr = (ball_velocity ** 2).sum(-1)
    SPEED_LOWER_BOUND = 0.05 ** 2
    ball_pos_x = ball_pos[:, 0]
    ball_pos_y = ball_pos[:, 1]


if __name__ == "__main__":
    num_balls = 11
    ti.init(ti.cpu)
    resolution = (1280, 800)
    ratio = resolution[0] / resolution[1]  # x/y
    fps = 60
    CUE_BALL_IDX = 0
    rod_length = 0.1

    # wc for world space x[0.0, ratio],  y[0.0, 1.0]
    # sc for screen space [0.0, 1.0]^2
    cue_ball_velocity_magnitude_wc = 1.0
    ball_pixel_radius = 10
    ball_radius_wc = 1.0 / resolution[1] * ball_pixel_radius
    x_begin = 0.0
    x_end = ratio
    y_begin = 0.0
    y_end = 1.0
    wc_to_sc_multiplier = np.array([1 / ratio, 1])  # transform to [0,1]^ screen space
    sc_to_wc_multiplier = np.array([ratio, 1])

    virtual_bound_x = np.array([ball_radius_wc, x_end - ball_radius_wc])
    virtual_bound_y = np.array([ball_radius_wc, y_end - ball_radius_wc])

    ball_pos_wc = np.zeros((num_balls, 2))
    ball_velocities_wc = np.zeros((num_balls, 2))

    span = np.array([virtual_bound_x[1] - virtual_bound_x[0], virtual_bound_y[1] - virtual_bound_y[0]])
    offset = np.array([virtual_bound_x[0], virtual_bound_y[0]])
    for i in range(num_balls):
        ball_i_pos_wc = np.random.rand(2) * span + offset
        if i != CUE_BALL_IDX:
            while two_ball_collides(ball_pos_wc[CUE_BALL_IDX], ball_i_pos_wc, ball_radius_wc):
                ball_i_pos_wc = np.random.rand(2) * span + offset
        ball_pos_wc[i] = ball_i_pos_wc

    gui = ti.GUI("billiard_game_multi_ball", resolution)
    gui.fps_limit = fps
    delta_t = 1.0 / fps

    boundary_begin = np.array([
        [x_begin, y_begin],
        [x_begin, y_begin],
        [x_end, y_end],
        [x_end, y_end]
    ])

    boundary_end = np.array([
        [x_end, y_begin],
        [x_begin, y_end],
        [x_end, y_begin],
        [x_begin, y_end]
    ])
    rectify_pv = partial(rectify_positions_and_velocities,
                         virtual_bound_x[0], virtual_bound_x[1],
                         virtual_bound_y[0], virtual_bound_y[1])
    ball_pairs = list(combinations(range(num_balls), 2))
    ball_color_indices = np.ones(num_balls)
    ball_color_indices[CUE_BALL_IDX] = 0
    ball_colors = [0xFFFFFF, 0xFF0000]
    while gui.running:
        gui.clear(0x00FF00)
        hit_ball = gui.get_event(ti.GUI.PRESS) and gui.is_pressed("a")
        cue_ball_pos_sc = ball_pos_wc[CUE_BALL_IDX] * wc_to_sc_multiplier
        if np.allclose((ball_velocities_wc ** 2).sum(-1), 0., rtol=0.001, atol=0.001):
            rod_dir_sc, length = normalize_vector(gui.get_cursor_pos() - cue_ball_pos_sc)
            rod_line = rod_dir_sc * min(rod_length, length)
            gui.line(cue_ball_pos_sc, cue_ball_pos_sc + rod_line, radius=2)
            if hit_ball:
                ball_velocities_wc[CUE_BALL_IDX] = (rod_dir_sc * sc_to_wc_multiplier) * cue_ball_velocity_magnitude_wc \
                                                   * (min(rod_length, length) / rod_length)
        gui.lines(begin=boundary_begin, end=boundary_end, radius=2)
        gui.circles(ball_pos_wc * wc_to_sc_multiplier.reshape(1, 2),
                    radius=ball_pixel_radius,
                    palette=ball_colors,
                    palette_indices=ball_color_indices)
        gui.show()

        for i in range(num_balls):
            next_pos_wc, next_velocity_wc = calc_next_pos_and_velocity(ball_pos_wc[i], ball_velocities_wc[i],
                                                                       delta_t, drag_coefficient=0.01, g=9.8)
            next_pos_wc, next_velocity_wc = rectify_pv(next_pos_wc, next_velocity_wc)
            ball_pos_wc[i] = next_pos_wc
            ball_velocities_wc[i] = next_velocity_wc

        for ball_i, ball_j in ball_pairs:
            ball_i_pos_wc = ball_pos_wc[ball_i]
            ball_j_pos_wc = ball_pos_wc[ball_j]
            if two_ball_collides(ball_i_pos_wc, ball_j_pos_wc, ball_radius_wc):
                ball_i_pos_wc, ball_j_pos_wc = rectify_positions_in_collision(ball_i_pos_wc, ball_j_pos_wc,
                                                                              ball_radius_wc)
                ball_i_v_wc = ball_velocities_wc[ball_i]
                ball_j_v_wc = ball_velocities_wc[ball_j]
                ball_i_v_wc, ball_j_v_wc = calc_after_collision_velocity(ball_i_pos_wc, ball_j_pos_wc,
                                                                         ball_i_v_wc, ball_j_v_wc)
                ball_velocities_wc[ball_i] = ball_i_v_wc
                ball_velocities_wc[ball_j] = ball_j_v_wc
