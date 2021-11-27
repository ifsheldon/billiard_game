module fix_point_multiply
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input signed [WIDTH-1:0] x,
        input signed [WIDTH-1:0] y,
        output signed [WIDTH-1:0] xy
    );
    
    parameter INT_WIDTH = WIDTH - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [2*WIDTH - 1: 0] product = x * y;
    assign xy = product[2*WIDTH - 1:WIDTH] << SHIFT_BIT;

endmodule