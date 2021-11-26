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
    
    wire [WIDTH - 1:0] length_sqr;

    sqr_sum #(WIDTH, FRAC_WIDTH) square_sum(.x(x), .y(y), .z(z), .sum(length_sqr));

    sqrt #(WIDTH, FRAC_WIDTH) root(.clk(clk), 
                                    .rst(rst), 
                                    .num_in(length_sqr), 
                                    .done(done), 
                                    .out(length));

    close_to_zero #(WIDTH) judge_close_to_0 (length, close_to_0);

    assign nx = close_to_0? x : x / length;
    assign ny = close_to_0? y : y / length;
    assign nz = close_to_0? z : z / length;

endmodule
