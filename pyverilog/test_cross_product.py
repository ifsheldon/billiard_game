import os

import numpy as np
import pyverilator

from . import to_float, to_fix_point_int


def normalize_vector(vector):
    return vector / np.sqrt((vector ** 2).sum())


def test_cross_product():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("cross_product.v")

    for i in range(10):
        v0 = normalize_vector(np.random.randn(3))
        v1 = normalize_vector(np.random.randn(3))

        v0_fix_point = to_fix_point_int(v0)
        v1_fix_point = to_fix_point_int(v1)

        sim.io.x0, sim.io.y0, sim.io.z0 = v0_fix_point
        sim.io.x1, sim.io.y1, sim.io.z1 = v1_fix_point

        cross_product = to_float(np.array([sim.io.x2, sim.io.y2, sim.io.z2], dtype=np.int32))
        expected = np.cross(v0, v1)
        cross_product = np.round(cross_product, decimals=5)
        expected = np.round(expected, decimals=5)
        assert np.allclose(expected, cross_product)
