// sum = x^2 + y^2 + z^2
module sqr_sum
    #(parameter N= 32, FRAC_WIDTH = 30)
    (
        input signed [N-1: 0] x,
        input signed [N-1: 0] y,
        input signed [N-1: 0] z,
        output signed [N-1: 0] sum
    );
    parameter INT_WIDTH = N - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [2*N - 1: 0] x_sqr = x * x;
    wire signed [2*N - 1: 0] y_sqr = y * y;
    wire signed [2*N - 1: 0] z_sqr = z * z;
    wire signed [2*N - 1: 0] _sum = x_sqr + y_sqr + z_sqr;
    assign sum = _sum[2*N - 1:N] << SHIFT_BIT;

endmodule