import numpy as np
import pyverilator
import os
from . import to_float, to_fix_point_int


def test_calc_next_p_and_v():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("calc_next_p_and_v.v")
    # TODO
    pass
