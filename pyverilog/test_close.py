import pyverilator
# run the below tests with pytest


def test_scalar_close():
    sim = pyverilator.PyVerilator.build("close_to_zero.v")
    num = int(2 ** 10)
    sim.io.num = num
    close = bool(sim.io.close)
    assert close
    sim.io.num = -num
    close = bool(sim.io.close)
    assert close
    sim.io.num = num + 1
    close = bool(sim.io.close)
    assert not close
    sim.io.num = -num - 1
    close = bool(sim.io.close)
    assert not close


def test_vec_close():
    sim = pyverilator.PyVerilator.build("allclose.v")
    num = int(2 ** 10)
    sim.io.x = num
    sim.io.y = num
    sim.io.z = num
    allclose = bool(sim.io.close)
    assert allclose
