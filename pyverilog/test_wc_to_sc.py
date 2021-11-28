import pyverilator
import numpy as np
import os
from . import to_fix_point_int


def test_wc_to_sc():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("wc_to_sc.v")
    res_y = 800
    for i in range(10):
        x_wc = (np.random.rand(1) * 1.6)[0]
        y_wc = np.random.rand(1)[0]
        x_sc_expected = int(np.round(x_wc * 800))
        y_sc_expected = int(np.round(y_wc * 800))
        x_wc_fix_point = to_fix_point_int(x_wc)
        y_wc_fix_point = to_fix_point_int(y_wc)
        sim.io.x = x_wc_fix_point
        sim.io.y = y_wc_fix_point
        sim.io.res_y = res_y
        x_sc, y_sc = sim.io.x_sc.value, sim.io.y_sc.value
        assert x_sc_expected + 1 >= x_sc >= x_sc_expected - 1
        assert y_sc_expected + 1 >= y_sc >= y_sc_expected - 1
