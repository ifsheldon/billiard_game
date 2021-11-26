import pytest
import pyverilator
import numpy as np
import os

from . import FRAC_BIT_WIDTH, FRAC_TO_INT_MULTIPLIER, INT_TO_FRAC_MULTIPLIER


def test_square_root():
    os.chdir("./pyverilog")
    output_sqrt_multiplier = 2 ** (FRAC_BIT_WIDTH // 2)  # left shift FRAC_BIT_WIDTH/2 bits

    sim = pyverilator.PyVerilator.build("square_root.v")
    sim.clock.tick()
    sim.io.reset = 1
    sim.io.reset = 0

    input_frac = 1.5
    assert 2.0 > input_frac >= -1.0
    input_int = round(input_frac * FRAC_TO_INT_MULTIPLIER)
    sim.io.num_in = input_int

    sim.clock.tick()
    cycle_count = 1
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        cycle_count += 1
        done = bool(sim.io.done.value)

    output_int = sim.io.sq_root.value
    output_frac = output_int * output_sqrt_multiplier * INT_TO_FRAC_MULTIPLIER
    print(f"Output sqrt of {input_frac} = {output_frac}")
    print(f"Expected = {np.sqrt(input_frac)}")
    print(f"Used {cycle_count} cycles")


def test_sqrt():
    os.chdir("./pyverilog")
    sim = pyverilator.PyVerilator.build("sqrt.v")
    sim.clock.tick()
    sim.io.rst = 1
    sim.io.rst = 0

    input_frac = 1.5
    assert 2.0 > input_frac >= -1.0
    input_int = round(input_frac * FRAC_TO_INT_MULTIPLIER)
    sim.io.num_in = input_int

    sim.clock.tick()
    cycle_count = 1
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        cycle_count += 1
        done = bool(sim.io.done.value)

    output_int = sim.io.out.value
    output_frac = output_int * INT_TO_FRAC_MULTIPLIER
    print(f"Output sqrt of {input_frac} = {output_frac}")
    print(f"Expected = {np.sqrt(input_frac)}")
    print(f"Used {cycle_count} cycles")
