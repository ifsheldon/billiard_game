import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int


def test_ball_collision_detect():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("ball_collision_detect.v")
    # TODO
    pass
