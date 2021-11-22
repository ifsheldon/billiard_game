import taichi as ti
import numpy as np
from functools import partial
from itertools import combinations

from billiard_game_dual_ball import normalize_vector, two_ball_collides, calc_next_pos_and_velocity, \
    calc_after_collision_velocity, rectify_positions_in_collision, rectify_positions_and_velocities

# Constants
WHITE = 0xFFFFFF
RED = 0xFF0000
GREEN = 0x00FF00
BLUE = 0x0000FF

# wc for world space x[0.0, ratio],  y[0.0, 1.0]
# sc for screen space [0.0, 1.0]^2

# Constant parameters
RESOLUTION = (1280, 800)
RATIO = RESOLUTION[0] / RESOLUTION[1]  # x/y
FPS = 60
CUE_BALL_IDX = 0
STICK_LENGTH_SC = 0.1
DRAG_COEFFICIENT = 0.03
G = 9.8
CUE_BALL_MAX_SPEED_WC = 1.0
BALL_PIXEL_RADIUS = 10
HOLE_PIXEL_RADIUS = 15
num_balls = 2
# Derived parameters
ball_radius_wc = BALL_PIXEL_RADIUS / RESOLUTION[1]
hole_radius_wc = HOLE_PIXEL_RADIUS / RESOLUTION[1]
x_begin_wc = 0.0
x_end_wc = RATIO
y_begin_wc = 0.0
y_end_wc = 1.0


def score(hole_center_positions, ball_position):
    diff = hole_center_positions - ball_position.reshape(1, 2)
    square_dist = (diff ** 2).sum(axis=-1)
    radii_square_sum = (0.8 * ball_radius_wc + hole_radius_wc) ** 2
    return np.any(square_dist <= radii_square_sum)


def place_balls_wc(span_wc, offset_wc):
    ball_pos_wc = np.zeros((num_balls, 2))
    for i in range(num_balls):
        ball_i_pos_wc = np.random.rand(2) * span_wc + offset_wc
        if i != CUE_BALL_IDX:
            while two_ball_collides(ball_pos_wc[CUE_BALL_IDX], ball_i_pos_wc, ball_radius_wc):
                ball_i_pos_wc = np.random.rand(2) * span_wc + offset_wc
        ball_pos_wc[i] = ball_i_pos_wc
    return ball_pos_wc


if __name__ == "__main__":
    ti.init(ti.cpu)

    wc_to_sc_multiplier = np.array([1 / RATIO, 1])  # transform to [0,1]^ screen space
    sc_to_wc_multiplier = np.array([RATIO, 1])

    virtual_bound_x = np.array([ball_radius_wc, x_end_wc - ball_radius_wc])
    virtual_bound_y = np.array([ball_radius_wc, y_end_wc - ball_radius_wc])

    dx_wc = x_end_wc / 2.
    dy_wc = y_end_wc / 2.
    hole_pos_x = np.arange(3) * dx_wc
    hole_pos_y = np.arange(3) * dy_wc
    hole_pos_x, hole_pos_y = np.meshgrid(hole_pos_x, hole_pos_y)
    hole_center_positions_wc = np.stack([hole_pos_x, hole_pos_y], axis=-1).reshape(-1, 2)  # (3, 3, 2) -> (9, 2)
    hole_center_positions_wc = np.delete(hole_center_positions_wc, 4, axis=0)
    hole_center_positions_sc = hole_center_positions_wc * wc_to_sc_multiplier.reshape(1, 2)

    ball_velocities_wc = np.zeros((num_balls, 2))
    ball_visible = np.ones(num_balls, dtype=bool)

    span_wc = np.array([virtual_bound_x[1] - virtual_bound_x[0], virtual_bound_y[1] - virtual_bound_y[0]])
    offset_wc = np.array([virtual_bound_x[0], virtual_bound_y[0]])
    ball_pos_wc = place_balls_wc(span_wc, offset_wc)

    gui = ti.GUI("billiard_game_multi_ball", RESOLUTION)
    gui.fps_limit = FPS
    delta_t = 1.0 / FPS

    boundary_begin_wc = np.array([
        [x_begin_wc, y_begin_wc],
        [x_begin_wc, y_begin_wc],
        [x_end_wc, y_end_wc],
        [x_end_wc, y_end_wc]
    ])

    boundary_end_wc = np.array([
        [x_end_wc, y_begin_wc],
        [x_begin_wc, y_end_wc],
        [x_end_wc, y_begin_wc],
        [x_begin_wc, y_end_wc]
    ])
    rectify_pv = partial(rectify_positions_and_velocities,
                         virtual_bound_x[0], virtual_bound_x[1],
                         virtual_bound_y[0], virtual_bound_y[1])
    ball_pairs = list(combinations(range(num_balls), 2))
    ball_color_indices = np.ones(num_balls)
    ball_color_indices[CUE_BALL_IDX] = 0
    ball_colors = [WHITE, RED]
    while gui.running:
        gui.clear(GREEN)
        hit_ball = gui.get_event(ti.GUI.PRESS) and gui.is_pressed("a")
        cue_ball_pos_sc = ball_pos_wc[CUE_BALL_IDX] * wc_to_sc_multiplier
        if np.allclose((ball_velocities_wc ** 2).sum(-1), 0., rtol=0.001, atol=0.001) and ball_visible[CUE_BALL_IDX]:
            rod_dir_sc, length = normalize_vector(gui.get_cursor_pos() - cue_ball_pos_sc)
            rod_line = rod_dir_sc * min(STICK_LENGTH_SC, length)
            gui.line(cue_ball_pos_sc, cue_ball_pos_sc + rod_line, radius=2)
            if hit_ball:
                ball_velocities_wc[CUE_BALL_IDX] = (rod_dir_sc * sc_to_wc_multiplier) * CUE_BALL_MAX_SPEED_WC \
                                                   * (min(STICK_LENGTH_SC, length) / STICK_LENGTH_SC)
        for i in range(num_balls):
            if score(hole_center_positions_wc, ball_pos_wc[i]):
                ball_visible[i] = False
                ball_velocities_wc[i] = 0.

        gui.lines(begin=boundary_begin_wc, end=boundary_end_wc, radius=2)
        gui.circles(ball_pos_wc[ball_visible] * wc_to_sc_multiplier.reshape(1, 2),
                    radius=BALL_PIXEL_RADIUS,
                    palette=ball_colors,
                    palette_indices=ball_color_indices[ball_visible])
        gui.circles(hole_center_positions_sc, radius=HOLE_PIXEL_RADIUS, color=0)
        gui.show()

        for i in range(num_balls):
            if not ball_visible[i]:
                continue
            next_pos_wc, next_velocity_wc = calc_next_pos_and_velocity(ball_pos_wc[i], ball_velocities_wc[i],
                                                                       delta_t, DRAG_COEFFICIENT, G)
            next_pos_wc, next_velocity_wc = rectify_pv(next_pos_wc, next_velocity_wc)
            ball_pos_wc[i] = next_pos_wc
            ball_velocities_wc[i] = next_velocity_wc

        for ball_i, ball_j in ball_pairs:
            if not ball_visible[ball_i] or not ball_visible[ball_j]:
                continue
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
