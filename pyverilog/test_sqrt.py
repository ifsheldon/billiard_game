import pyverilator
import numpy as np


def test_square_root():
    # fix point: 2 bit for signed integer part, 30 bit for fractional part
    input_width = 32
    int_bit_width = 2
    frac_bit_width = input_width - int_bit_width
    frac_to_int_multiplier = 2 ** frac_bit_width
    int_to_frac_multiplier = 2 ** (-frac_bit_width)
    output_sqrt_multiplier = 2 ** (frac_bit_width // 2)  # left shift frac_bit_width/2 bits

    sim = pyverilator.PyVerilator.build("square_root.v")
    sim.clock.tick()
    sim.io.reset = 1
    sim.io.reset = 0

    input_frac = 1.5
    assert 2.0 > input_frac >= -1.0
    input_int = round(input_frac * frac_to_int_multiplier)
    sim.io.num_in = input_int

    sim.clock.tick()
    cycle_count = 1
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        cycle_count += 1
        done = bool(sim.io.done.value)

    output_int = sim.io.sq_root.value
    output_frac = output_int * output_sqrt_multiplier * int_to_frac_multiplier
    print(f"Output sqrt of {input_frac} = {output_frac}")
    print(f"Expected = {np.sqrt(input_frac)}")
    print(f"Used {cycle_count} cycles")


def test_sqrt():
    # fix point: 2 bit for signed integer part, 30 bit for fractional part
    input_width = 32
    int_bit_width = 2
    frac_bit_width = input_width - int_bit_width
    frac_to_int_multiplier = 2 ** frac_bit_width
    int_to_frac_multiplier = 2 ** (-frac_bit_width)

    sim = pyverilator.PyVerilator.build("sqrt.v")
    sim.clock.tick()
    sim.io.rst = 1
    sim.io.rst = 0

    input_frac = 1.5
    assert 2.0 > input_frac >= -1.0
    input_int = round(input_frac * frac_to_int_multiplier)
    sim.io.num_in = input_int

    sim.clock.tick()
    cycle_count = 1
    done = bool(sim.io.done.value)
    while not done:
        sim.clock.tick()
        cycle_count += 1
        done = bool(sim.io.done.value)

    output_int = sim.io.out.value
    output_frac = output_int * int_to_frac_multiplier
    print(f"Output sqrt of {input_frac} = {output_frac}")
    print(f"Expected = {np.sqrt(input_frac)}")
    print(f"Used {cycle_count} cycles")
