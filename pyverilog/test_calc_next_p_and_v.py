import numpy as np
import pyverilator
import os
import taichi as ti
from . import to_float, to_fix_point_int
from .all_python_functions import rectify_positions_and_velocities, two_ball_collides, rectify_positions_in_collision, \
    calc_after_collision_velocity, normalize_vector, calc_next_pos_and_velocity


def calc_next_pos_and_velocity_test(sim, pos_wc, velocity_wc, delta_t, drag_coefficient, g):
    sim.io.rst = 0
    sim.io.rst = 1
    sim.io.rst = 0
    sim.io.p_x, sim.io.p_y = to_fix_point_int(pos_wc)
    sim.io.v_x, sim.io.v_y = to_fix_point_int(velocity_wc)
    sim.io.delta_t = to_fix_point_int(delta_t)
    sim.friction_coeff = to_fix_point_int(drag_coefficient * g)
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        done = bool(sim.io.done.value)

    next_pos_wc = to_float(np.array([sim.io.p_x_next.value, sim.io.p_y_next.value]))
    velocity_wc_next = to_float(np.array([sim.io.v_x_next.value, sim.io.v_y_next.value]))
    return next_pos_wc, velocity_wc_next


def test_calc_next_p_and_v():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("calc_next_p_and_v.v")

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
        old_cue_ball_pos_wc, old_cue_ball_velocity_wc = cue_ball_pos_wc, cue_ball_velocity_wc
        cue_ball_pos_wc, cue_ball_velocity_wc = calc_next_pos_and_velocity_test(sim, old_cue_ball_pos_wc,
                                                                                old_cue_ball_velocity_wc,
                                                                                delta_t, drag_coefficient, g)
        cue_ball_pos_wc_ref, cue_ball_velocity_wc_ref = calc_next_pos_and_velocity(old_cue_ball_pos_wc,
                                                                                   old_cue_ball_velocity_wc,
                                                                                   delta_t, drag_coefficient, g)
        assert np.allclose(cue_ball_pos_wc_ref, cue_ball_pos_wc, atol=0.001) \
               and np.allclose(cue_ball_velocity_wc_ref, cue_ball_velocity_wc, atol=0.001)

        cue_ball_pos_wc, cue_ball_velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                                                 virtual_bound_y[0], virtual_bound_y[1],
                                                                                 cue_ball_pos_wc,
                                                                                 cue_ball_velocity_wc)
        ball_pos_wc, ball_velocity_wc = calc_next_pos_and_velocity_test(sim, ball_pos_wc, ball_velocity_wc, delta_t,
                                                                        drag_coefficient, g)
        ball_pos_wc, ball_velocity_wc = rectify_positions_and_velocities(virtual_bound_x[0], virtual_bound_x[1],
                                                                         virtual_bound_y[0], virtual_bound_y[1],
                                                                         ball_pos_wc, ball_velocity_wc)
        if two_ball_collides(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc):
            cue_ball_pos_wc, ball_pos_wc = rectify_positions_in_collision(cue_ball_pos_wc, ball_pos_wc, ball_radius_wc)
            old_cue_ball_v = cue_ball_velocity_wc
            old_ball_v = ball_velocity_wc
            original_total_speed = old_cue_ball_v + old_ball_v
            cue_ball_velocity_wc, ball_velocity_wc = calc_after_collision_velocity(cue_ball_pos_wc,
                                                                                   ball_pos_wc,
                                                                                   cue_ball_velocity_wc,
                                                                                   ball_velocity_wc)
            new_total_speed = cue_ball_velocity_wc + ball_velocity_wc
            assert np.allclose(original_total_speed, new_total_speed)
