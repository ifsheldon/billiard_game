// only valid for fix point < 1.0 which is our case
module sqr_sum
    #(parameter N= 32, FRAC_WIDTH = 30)
    (
        input signed [N-1: 0] x,
        input signed [N-1: 0] y,
        input signed [N-1: 0] z,
        output reg signed [N-1: 0] sum
    );
    parameter INT_WIDTH = N - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    reg signed [2*N - 1: 0] x_sqr;
    reg signed [2*N - 1: 0] y_sqr;
    reg signed [2*N - 1: 0] z_sqr;

    always @* 
    begin
        x_sqr = x * x;
        y_sqr = y * y;
        z_sqr = z * z;
        sum = (x_sqr[2*N - 1:N] + y_sqr[2*N - 1:N] + z_sqr[2*N - 1:N]) << SHIFT_BIT;
    end

endmodule