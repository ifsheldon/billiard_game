import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int


def test_rectifier():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("rectify_p_in_collision.v")
    # TODO
    pass
