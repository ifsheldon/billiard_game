module dot_product
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input signed [WIDTH-1: 0] x0,
        input signed [WIDTH-1: 0] y0,
        input signed [WIDTH-1: 0] x1,
        input signed [WIDTH-1: 0] y1,
        output signed [WIDTH-1: 0] dot
    );
    parameter INT_WIDTH = WIDTH - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [2*WIDTH - 1: 0] xx = x0 * x1;
    wire signed [2*WIDTH - 1: 0] yy = y0 * y1;
    wire signed [2*WIDTH - 1: 0] sum = xx + yy;
    assign dot = sum[2*WIDTH - 1:WIDTH] << SHIFT_BIT;

endmodule