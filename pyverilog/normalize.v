module normalize
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input clk,
        input signed [WIDTH-1:0] x,
        input signed [WIDTH-1:0] y,
        input signed [WIDTH-1:0] z,
        output reg done,
        output reg [WIDTH-1:0] length,
        output reg signed [WIDTH-1:0] nx,
        output reg signed [WIDTH-1:0] ny,
        output reg signed [WIDTH-1:0] nz
    );
    reg [WIDTH*2 - 1:0] x_sqr;
    reg [WIDTH*2 - 1:0] y_sqr;
    reg [WIDTH*2 - 1:0] z_sqr;
    reg [WIDTH - 1:0] sqr_sum;
    reg close_to_0;
    sqrt #(WIDTH, FRAC_WIDTH) root(.clk(clk), 
                                    .rst(?), 
                                    .num_in(sqr_sum), 
                                    .done(done), 
                                    .out(length));
    close_to_zero #(WIDTH) judge_close_to_0 (length, close_to_0);
    # TODO

endmodule
