import numpy as np

# fix point: 2 bit for signed integer part, 30 bit for fractional part
INPUT_WIDTH = 32
INT_BIT_WIDTH = 2
FRAC_BIT_WIDTH = INPUT_WIDTH - INT_BIT_WIDTH
FRAC_TO_INT_MULTIPLIER = 2 ** FRAC_BIT_WIDTH
INT_TO_FRAC_MULTIPLIER = 2 ** (-FRAC_BIT_WIDTH)


def to_fix_point_int(x):
    x = x * FRAC_TO_INT_MULTIPLIER
    x = np.round(x).astype(np.int32)
    return x


def to_float(x):
    x = np.int32(x) * INT_TO_FRAC_MULTIPLIER
    return x
