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
    wire signed [WIDTH - 1:0] _nx;
    wire signed [WIDTH - 1:0] _ny;
    wire signed [WIDTH - 1:0] _nz;

    fix_point_division #(WIDTH, FRAC_WIDTH) normalize_x (x, length, _nx);
    fix_point_division #(WIDTH, FRAC_WIDTH) normalize_y (y, length, _ny);
    fix_point_division #(WIDTH, FRAC_WIDTH) normalize_z (z, length, _nz);
    
 
    assign nx = close_to_0? x : _nx;
    assign ny = close_to_0? y : _ny;
    assign nz = close_to_0? z : _nz;

endmodule
