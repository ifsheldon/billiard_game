import numpy as np
import os
import pyverilator
from . import to_float, to_fix_point_int


def test_normalize():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("normalize.v")

    sim.clock.tick()
    sim.io.rst = 1
    sim.io.rst = 0

    v = np.random.randn(3)
    v /= np.sqrt((v ** 2).sum())
    v *= np.sqrt(np.random.rand(1) * 2)  # magnitude will be [0, 2]
    print(v)
    v_fix_point_int = to_fix_point_int(v)
    sim.io.x, sim.io.y, sim.io.z = v_fix_point_int
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        done = bool(sim.io.done.value)

    print(f"output length = {to_float(sim.io.length)}")
    print(f"vector length = {np.sqrt((v ** 2).sum())}")
    print(bool(sim.io.close_to_0.value))
    # FIXME: now all the output is 0
    normalize_v = to_float(np.array([sim.io.nx.value, sim.io.ny.value, sim.io.nz.value], dtype=np.int32))
    expected_v = v / np.sqrt((v ** 2).sum())
    print(f"result = {normalize_v}, length = {np.sqrt((normalize_v ** 2).sum())}")
    print(f"expected = {expected_v}, length = {np.sqrt((expected_v ** 2).sum())}")
