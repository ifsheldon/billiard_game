module mv
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input signed [WIDTH-1: 0] x00,
        input signed [WIDTH-1: 0] x01,
        input signed [WIDTH-1: 0] x10,
        input signed [WIDTH-1: 0] x11,
        input signed [WIDTH-1: 0] vx,
        input signed [WIDTH-1: 0] vy,
        output signed [WIDTH-1: 0] ox,
        output signed [WIDTH-1: 0] oy
    );

    dot_product #(WIDTH, FRAC_WIDTH) row0 (.x0(x00), .y0(x01), .x1(vx), .y1(vy), .dot(ox));
    dot_product #(WIDTH, FRAC_WIDTH) row1 (.x0(x10), .y0(x11), .x1(vx), .y1(vy), .dot(oy));

endmodule
