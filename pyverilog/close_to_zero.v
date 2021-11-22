module close_to_zero
    #(parameter WIDTH = 32, TOL = 10)
    (
        input signed [WIDTH-1:0] num, // signed
        output reg close
    );
    // TOL: tolerance - number of digits, if - 2^TOL <= num <= 2^TOL, return 1, else return 0

    reg signed [WIDTH-1:0] tolerance = 1'b1 << TOL;

    always @* begin
        if (num <= tolerance & num >= -tolerance)
            close = 1;
        else
            close = 0;
    end

endmodule