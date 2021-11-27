module normalize
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input clk,
        input rst,
        input signed [WIDTH-1:0] x,
        input signed [WIDTH-1:0] y,
        input signed [WIDTH-1:0] z,
        output done,
        output signed [WIDTH-1:0] length,
        output signed [WIDTH-1:0] nx,
        output signed [WIDTH-1:0] ny,
        output signed [WIDTH-1:0] nz,
        output close_to_0
    );
    parameter INT_WIDTH = WIDTH - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [WIDTH - 1:0] length_sqr;

    sqr_sum #(WIDTH, FRAC_WIDTH) square_sum(.x(x), .y(y), .z(z), .sum(length_sqr));

    sqrt #(WIDTH, FRAC_WIDTH) root(.clk(clk), 
                                    .rst(rst), 
                                    .num_in(length_sqr), 
                                    .done(done), 
                                    .out(length));

    close_to_zero #(WIDTH) judge_close_to_0 (length, close_to_0);

    wire signed [WIDTH * 2 - 1:0] shift_x = x << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] shift_y = y << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] shift_z = z << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] x_divide = (shift_x / length) << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] y_divide = (shift_y / length) << FRAC_WIDTH;
    wire signed [WIDTH * 2 - 1:0] z_divide = (shift_z / length) << FRAC_WIDTH;

 
    assign nx = close_to_0? x : (x_divide[2*WIDTH - 1:WIDTH] << SHIFT_BIT);
    assign ny = close_to_0? y : (y_divide[2*WIDTH - 1:WIDTH] << SHIFT_BIT);
    assign nz = close_to_0? z : (z_divide[2*WIDTH - 1:WIDTH] << SHIFT_BIT);

endmodule
