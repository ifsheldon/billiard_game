import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int
import taichi as ti
from .all_python_functions import calc_next_pos_and_velocity, rectify_positions_and_velocities, \
    rectify_positions_in_collision, calc_after_collision_velocity, two_ball_collides, normalize_vector


def rectify_positions_in_collision_test(sim, ball1_pos, ball2_pos, radius):
    sim.io.rst = 0
    sim.io.rst = 1
    sim.io.rst = 0
    sim.io.x0, sim.io.y0 = to_fix_point_int(ball1_pos)
    sim.io.x1, sim.io.y1 = to_fix_point_int(ball2_pos)
    sim.io.radius = to_fix_point_int(radius)
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        done = bool(sim.io.done.value)

    rectified_ball1_pos = to_float(np.array([sim.io.new_x0.value, sim.io.new_y0.value]))
    rectified_ball2_pos = to_float(np.array([sim.io.new_x1.value, sim.io.new_y1.value]))
    return rectified_ball1_pos, rectified_ball2_pos


def test_rectifier():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("rectify_p_in_collision.v")

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
            old_cue_ball_pos_wc, old_ball_pos_wc = cue_ball_pos_wc, ball_pos_wc
            cue_ball_pos_wc_ref, ball_pos_wc_ref = rectify_positions_in_collision(old_cue_ball_pos_wc, old_ball_pos_wc,
                                                                                  ball_radius_wc)
            cue_ball_pos_wc, ball_pos_wc = rectify_positions_in_collision_test(sim, old_cue_ball_pos_wc,
                                                                               old_ball_pos_wc,
                                                                               ball_radius_wc)
            assert np.allclose(cue_ball_pos_wc_ref, cue_ball_pos_wc, atol=0.0001)
            assert np.allclose(ball_pos_wc_ref, ball_pos_wc, atol=0.0001)
            cue_ball_velocity_wc, ball_velocity_wc = calc_after_collision_velocity(cue_ball_pos_wc,
                                                                                   ball_pos_wc,
                                                                                   cue_ball_velocity_wc,
                                                                                   ball_velocity_wc)
