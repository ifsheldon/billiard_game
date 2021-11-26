module cross_product
    #(parameter N = 32, FRAC_WIDTH = 30)
    (
        input signed [N-1:0] x0,
        input signed [N-1:0] y0,
        input signed [N-1:0] z0,
        input signed [N-1:0] x1,
        input signed [N-1:0] y1,
        input signed [N-1:0] z1,
        output signed [N-1:0] x2,
        output signed [N-1:0] y2,
        output signed [N-1:0] z2
    );
    parameter INT_WIDTH = N - FRAC_WIDTH;
    parameter SHIFT_BIT = INT_WIDTH * INT_WIDTH - INT_WIDTH;

    wire signed [2*N-1: 0] _x2;
    wire signed [2*N-1: 0] _y2;
    wire signed [2*N-1: 0] _z2;

    assign _x2 = y0 * z1 - z0 * y1;
    assign _y2 = z0 * x1 - x0 * z1;
    assign _z2 = x0 * y1 - y0 * x1;

    assign x2 = _x2[2*N - 1:N] << SHIFT_BIT;
    assign y2 = _y2[2*N - 1:N] << SHIFT_BIT;
    assign z2 = _z2[2*N - 1:N] << SHIFT_BIT;

endmodule