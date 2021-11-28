import numpy as np
import pyverilator
import os
import taichi as ti

from . import to_fix_point_int, to_float
from .all_python_functions import normalize_vector, calc_next_pos_and_velocity, rectify_positions_and_velocities, \
    rectify_positions_in_collision, two_ball_collides, calc_after_collision_velocity


def calc_after_collision_velocity_test(sim, ball1_pos, ball2_pos, ball1_velocity, ball2_velocity):
    sim.io.rst = 1
    sim.io.rst = 0
    sim.io.x0, sim.io.y0 = to_fix_point_int(ball1_pos)
    sim.io.v0_x, sim.io.v0_y = to_fix_point_int(ball1_velocity)
    sim.io.x1, sim.io.y1 = to_fix_point_int(ball2_pos)
    sim.io.v1_x, sim.io.v1_y = to_fix_point_int(ball2_velocity)
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        done = bool(sim.io.done.value)

    ball1_v_wc_after_collision = to_float(np.array([sim.io.new_v0_x.value, sim.io.new_v0_y.value]))
    ball2_v_wc_after_collision = to_float(np.array([sim.io.new_v1_x.value, sim.io.new_v1_y.value]))
    return ball1_v_wc_after_collision, ball2_v_wc_after_collision


def test_calc_after_collision_v():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("calc_after_collision_v.v")

    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60

    g = 9.8
    drag_coefficient = 0.001

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
        if two_ball_collides(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc):
            cue_ball_pos_wc, ball_pos_wc = rectify_positions_in_collision(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc)

            # FIXME: have problem
            old_cue_ball_velocity_wc, old_ball_velocity_wc = cue_ball_velocity_wc, ball_velocity_wc
            cue_ball_velocity_wc, ball_velocity_wc = calc_after_collision_velocity_test(sim, cue_ball_pos_wc,
                                                                                        ball_pos_wc,
                                                                                        old_cue_ball_velocity_wc,
                                                                                        old_ball_velocity_wc)
            cue_ball_velocity_wc_ref, ball_velocity_wc_ref = calc_after_collision_velocity(cue_ball_pos_wc,
                                                                                           ball_pos_wc,
                                                                                           old_cue_ball_velocity_wc,
                                                                                           old_ball_velocity_wc)

            assert np.allclose(cue_ball_velocity_wc_ref, cue_ball_velocity_wc)
            assert np.allclose(ball_velocity_wc_ref, ball_velocity_wc)
