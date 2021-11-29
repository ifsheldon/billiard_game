// fix point square root
module sqrt
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input clk,
        input rst,
        input [WIDTH-1:0] num_in,
        output done,
        output reg [WIDTH-1:0] out
    );

    wire [WIDTH - 1: 0] result;

    square_root #(WIDTH) root(.Clock(clk), 
                            .reset(rst), 
                            .num_in(num_in),
                            .done(done),
                            .sq_root(result[WIDTH/2 - 1: 0]));
    
    always @* 
    begin
        out = result << (FRAC_WIDTH / 2);
    end

endmodule