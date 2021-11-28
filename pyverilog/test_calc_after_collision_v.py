import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int


def test_calc_after_collision_v():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("calc_after_collision_v.v")
    # TODO
    pass