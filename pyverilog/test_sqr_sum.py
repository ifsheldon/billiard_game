import os

import numpy as np
import pyverilator

from . import to_fix_point_int, to_float


def test_sqr_sum():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("sqr_sum.v")
    # speed limit in WC is 1.0
    v = np.random.randn(3)
    v /= np.sqrt((v ** 2).sum()) + np.random.rand(1)
    v_fix_point = to_fix_point_int(v)
    print(f"v = {v}")
    sim.io.x = v_fix_point[0]
    sim.io.y = v_fix_point[1]
    sim.io.z = v_fix_point[2]
    sum_int = sim.io.sum.value
    sum_float = to_float(sum_int)
    print(f"output = {sum_float}")
    expected = (v ** 2).sum()
    print(f"expected = {expected}")
    sum_float = round(sum_float, 6)
    expected = round(expected, 6)
    assert sum_float == expected


def test_sqr_sum_v_length_ge_1():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("sqr_sum.v")
    for i in range(10):
        v = np.random.randn(3)
        v /= np.sqrt((v ** 2).sum())
        v *= np.sqrt(np.random.rand(1) + 1.0)  # speed will be [1, 2]
        v_fix_point = to_fix_point_int(v)
        print(f"v = {v}")
        sim.io.x = v_fix_point[0]
        sim.io.y = v_fix_point[1]
        sim.io.z = v_fix_point[2]
        sum_int = sim.io.sum.value
        sum_float = to_float(sum_int)
        print(f"output = {sum_float}")
        expected = (v ** 2).sum()
        print(f"expected = {expected}")
        sum_float = round(sum_float, 6)
        expected = round(expected, 6)
        assert sum_float == expected
