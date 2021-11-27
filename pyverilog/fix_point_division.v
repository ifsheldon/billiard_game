module fix_point_division
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input signed [WIDTH-1:0] x,
        input signed [WIDTH-1:0] y,
        output signed [WIDTH-1:0] x_over_y
    );
    parameter INT_WIDTH = WIDTH - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [WIDTH * 2 - 1:0] shift_x = x << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] x_by_y = (shift_x / y) << FRAC_WIDTH;
    assign x_over_y = x_by_y[2*WIDTH - 1:WIDTH] << SHIFT_BIT;

endmodule