// convert [0.0, 1.6] fix points to [0, 1280]
module wc_to_sc
    #(parameter WIDTH = 32)
    (
        input [WIDTH-1:0] x,
        input [WIDTH-1:0] y,
        input [10:0] res_y,
        output [10:0] x_sc,
        output [10:0] y_sc
    );

    wire [WIDTH-1 + 10:0] result_x = (x * res_y) << 1;
    wire [WIDTH-1 + 10:0] result_y = (y * res_y) << 1; 
    assign x_sc = result_x[WIDTH-1 + 10: WIDTH-1];
    assign y_sc = result_y[WIDTH-1 + 10: WIDTH-1];

endmodule