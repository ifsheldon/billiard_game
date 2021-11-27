import numpy as np
import os
import pyverilator
from . import to_float, to_fix_point_int


def test_multiply():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("fix_point_multiply.v")
    for i in range(10):
        xy = np.random.rand(2) * 4 - 2  # [-2, 2]
        while not (2.0 > xy[0] * xy[1] > -2.0):
            xy = np.random.rand(2) * 4 - 2  # [-2, 2]

        xy_fix_point = to_fix_point_int(xy)
        sim.io.x, sim.io.y = xy_fix_point
        product = to_float(sim.io.xy)
        expected = xy[0] * xy[1]
        print(f"Expected = {expected}, Got = {product}")
        assert np.isclose(expected, product)
