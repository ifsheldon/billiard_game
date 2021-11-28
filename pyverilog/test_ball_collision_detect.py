import numpy as np
import pyverilator
import os
import taichi as ti

from . import to_fix_point_int
from .all_python_functions import normalize_vector, calc_next_pos_and_velocity, rectify_positions_and_velocities, \
    rectify_positions_in_collision, calc_after_collision_velocity

EPS = 1e-5


def two_ball_collides(sim, ball1_pos, ball2_pos, radius):
    sim.io.x0, sim.io.y0 = to_fix_point_int(ball1_pos)
    sim.io.x1, sim.io.y1 = to_fix_point_int(ball2_pos)
    sim.io.radius = to_fix_point_int(radius)
    return bool(sim.io.collides.value)


def test_ball_collision_detect():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("ball_collision_detect.v")

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
        ball_pos_wc, ball_velocity_wc = calc_next_pos_and_velocity(ball_pos_wc, ball_velocity_wc, delta_t,
                                                                   drag_coefficient, g)
        ball_pos_wc, ball_velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                                         virtual_bound_y[0], virtual_bound_y[1],
                                                                         ball_pos_wc, ball_velocity_wc)
        if two_ball_collides(sim, cue_ball_pos_wc, ball_pos_wc, ball_radius_wc):
            cue_ball_pos_wc, ball_pos_wc = rectify_positions_in_collision(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc)
            cue_ball_velocity_wc, ball_velocity_wc = calc_after_collision_velocity(cue_ball_pos_wc,
                                                                                   ball_pos_wc,
                                                                                   cue_ball_velocity_wc,
                                                                                   ball_velocity_wc)
