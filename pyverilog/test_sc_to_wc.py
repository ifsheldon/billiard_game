import numpy as np
import pyverilator
import os
from . import to_float


def test_sc_to_wc():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("sc_to_wc.v")
    res_y = 800
    for i in range(10):
        x = int(1280 * np.random.rand(1))
        y = int(800 * np.random.rand(1))
        sim.io.x = x
        sim.io.y = y
        sim.io.res_y = res_y
        x_wc = to_float(sim.io.x_wc)
        y_wc = to_float(sim.io.y_wc)
        x_expected = x / res_y
        y_expected = y / res_y
        assert np.isclose(x_wc, x_expected)
        assert np.isclose(y_wc, y_expected)
