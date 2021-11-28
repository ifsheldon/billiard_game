import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int


def test_sc_to_wc():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("dot_product.v")
    for i in range(10):
        v0 = np.random.rand(2)
        v1 = np.random.rand(2)
        v0 /= np.sqrt((v0 ** 2).sum())
        v1 /= np.sqrt((v1 ** 2).sum())
        v0_fix_point = to_fix_point_int(v0)
        v1_fix_point = to_fix_point_int(v1)
        sim.io.x0, sim.io.y0 = v0_fix_point
        sim.io.x1, sim.io.y1 = v1_fix_point
        dot = to_float(sim.io.dot.value)
        expected_dot = (v0 * v1).sum()
        assert np.isclose(dot, expected_dot)


def test_m_v_multiplication():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("mv.v")
    for i in range(10):
        m = np.random.randn(2, 2)
        m /= np.sqrt((m ** 2).sum(axis=1, keepdims=True))
        v = np.random.rand(2)
        v /= np.sqrt((v ** 2).sum())
        mv_expected = m @ v.reshape(2, 1)
        mv_expected = mv_expected.reshape(2)
        m_fix_point = to_fix_point_int(m)
        sim.io.x00, sim.io.x01, sim.io.x10, sim.io.x11 = m_fix_point[0, 0], m_fix_point[0, 1], m_fix_point[1, 0], \
                                                         m_fix_point[1, 1]
        v_fix_point = to_fix_point_int(v)
        sim.io.vx, sim.io.vy = v_fix_point
        mv = to_float(np.array([sim.io.ox.value, sim.io.oy.value]))
        assert np.allclose(mv, mv_expected)
