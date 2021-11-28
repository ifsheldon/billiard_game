import numpy as np
import pyverilator
import os
import taichi as ti
from . import to_float, to_fix_point_int


def rectify_positions_and_velocities(rectifier,
                                     bound_x_low, bound_x_high,
                                     bound_y_low, bound_y_high,
                                     positions, velocities):
    rectifier.io.bound_x_low = to_fix_point_int(bound_x_low)
    rectifier.io.bound_x_high = to_fix_point_int(bound_x_high)
    rectifier.io.bound_y_low = to_fix_point_int(bound_y_low)
    rectifier.io.bound_y_high = to_fix_point_int(bound_y_high)
    positions = to_fix_point_int(positions)
    velocities = to_fix_point_int(velocities)

    rectifier.io.p_x, rectifier.io.p_y = positions
    rectifier.io.v_x, rectifier.io.v_y = velocities
    new_p = to_float(np.array([rectifier.io.new_p_x.value, rectifier.io.new_p_y.value]))
    new_v = to_float(np.array([rectifier.io.new_v_x.value, rectifier.io.new_v_y.value]))
    return new_p, new_v


def test_rectifier():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("rectify_p_v.v")
    ti.init(ti.cpu)
    resolution = (500, 500)
    fps = 60
    g = 9.8
    drag_coefficient = 0.
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
        pos_wc, velocity_wc = rectify_positions_and_velocities(sim,
                                                               virtual_bound_x[0], virtual_bound_x[1],
                                                               virtual_bound_y[0], virtual_bound_y[1],
                                                               pos_wc, velocity_wc_next_t)
