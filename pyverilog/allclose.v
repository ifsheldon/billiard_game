module allclose
    #(parameter WIDTH = 32, TOL = 10)
    (
        input signed [WIDTH-1:0] x,
        input signed [WIDTH-1:0] y,
        input signed [WIDTH-1:0] z,
        output close
    );
    // TOL: tolerance - number of digits, if - 2^TOL <= num <= 2^TOL, return 1, else return 0
    wire close_x, close_y, close_z;
    close_to_zero #(WIDTH, TOL) judge_x (x, close_x);
    close_to_zero #(WIDTH, TOL) judge_y (y, close_y);
    close_to_zero #(WIDTH, TOL) judge_z (z, close_z);
    assign close = close_x & close_y & close_z;

endmodule
