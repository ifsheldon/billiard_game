module close_to_zero
    #(parameter WIDTH = 32, TOL = 10)
    (
        input signed [WIDTH-1:0] num,
        output close
    );
    // TOL: tolerance - number of digits, if - 2^TOL <= num <= 2^TOL, return 1, else return 0

//    reg signed [WIDTH-1:0] tolerance = 32'b1 << TOL;
    assign close = (num > -32'd1024 && num < 32'd1024) ? 1'b1 : 1'b0;

endmodule