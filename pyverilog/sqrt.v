module sqrt
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input clk,
        input rst,
        input [WIDTH-1:0] num_in,
        output reg done,
        output reg [WIDTH-1:0] out
    );

    reg[WIDTH/2 - 1: 0] result;

    square_root #(WIDTH) root(.Clock(clk), 
                            .reset(rst), 
                            .num_in(num_in),
                            .done(done),
                            .sq_root(result));
    
    always @* 
    begin
        out = result << (FRAC_WIDTH / 2);
    end

endmodule