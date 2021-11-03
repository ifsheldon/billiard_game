import taichi as ti
import numpy as np
from functools import partial
from itertools import combinations

from billiard_game_dual_ball import normalize_vector, two_ball_collides, calc_next_pos_and_velocity, \
    calc_after_collision_velocity, rectify_positions_in_collision, rectify_positions_and_velocities

if __name__ == "__main__":
    num_balls = 10
    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60
    CUE_BALL_IDX = 0
    rod_length = 0.1

    # world space [0.0, 1.0] ^ 2
    cue_ball_velocity_magnitude_wc = 1.0
    ball_pixel_radius = 10
    ball_radius_wc = 1.0 / resolution[0] * ball_pixel_radius

    virtual_bound_x = np.array([ball_radius_wc, 1.0 - ball_radius_wc])
    virtual_bound_y = np.array([ball_radius_wc, 1.0 - ball_radius_wc])

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
    rectify_pv = partial(rectify_positions_and_velocities,
                         virtual_bound_x[0], virtual_bound_x[1],
                         virtual_bound_y[0], virtual_bound_y[1])
    ball_pairs = list(combinations(range(num_balls), 2))
    ball_color_indices = np.ones(num_balls)
    ball_color_indices[CUE_BALL_IDX] = 0
    ball_colors = [0xFF0000, 0xFFFFFF]
    while gui.running:
        hit_ball = gui.get_event(ti.GUI.PRESS) and gui.is_pressed("a")
        cue_ball_pos = ball_pos_wc[CUE_BALL_IDX]
        if np.allclose((ball_velocities_wc ** 2).sum(-1), 0., rtol=0.001, atol=0.001):
            rod_dir, length = normalize_vector(cue_ball_pos - gui.get_cursor_pos())
            rod_line = rod_dir * min(rod_length, length)
            gui.line(cue_ball_pos, cue_ball_pos - rod_line, radius=2)
            if hit_ball:
                ball_velocities_wc[CUE_BALL_IDX] = rod_dir * cue_ball_velocity_magnitude_wc \
                                                   * (min(rod_length, length) / rod_length)
        gui.lines(begin=boundary_begin, end=boundary_end, radius=2)
        gui.circles(ball_pos_wc, radius=ball_pixel_radius, palette=ball_colors, palette_indices=ball_color_indices)
        gui.show()

        for i in range(num_balls):
            next_pos, next_velocity = calc_next_pos_and_velocity(ball_pos_wc[i], ball_velocities_wc[i],
                                                                 delta_t, drag_coefficient=0.01, g=9.8)
            next_pos, next_velocity = rectify_pv(next_pos, next_velocity)
            ball_pos_wc[i] = next_pos
            ball_velocities_wc[i] = next_velocity

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
