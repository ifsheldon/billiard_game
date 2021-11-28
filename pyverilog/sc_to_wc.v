// Convert ints [0, 1280] to [0.0, 1.6] fix point representations
module sc_to_wc
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input [10:0] x,
        input [10:0] y,
        input [10:0] res_y,
        output [WIDTH-1:0] x_wc,
        output [WIDTH-1:0] y_wc
    );

    parameter ZERO = {FRAC_WIDTH{1'b0}};
    wire [10+FRAC_WIDTH*2: 0] x_ = {x, ZERO, ZERO};
    wire [10+FRAC_WIDTH*2: 0] y_ = {y, ZERO, ZERO};
    wire [10+FRAC_WIDTH*2: 0] res_y_ = {ZERO, res_y, ZERO};
    wire [10+FRAC_WIDTH*2: 0] x_divide = x_ / res_y_;
    wire [10+FRAC_WIDTH*2: 0] y_divide = y_ / res_y_;

    assign x_wc = x_divide[WIDTH-1:0];
    assign y_wc = y_divide[WIDTH-1:0];

endmodule
