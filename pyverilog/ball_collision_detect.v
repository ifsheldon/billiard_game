// Corresponding to two_ball_collides()
module ball_collision_detect
    #(parameter N = 32)
    (
        input signed [N-1:0] x0,
        input signed [N-1:0] y0,
        input signed [N-1:0] x1,
        input signed [N-1:0] y1,
        input signed [N-1:0] radius,
        output collides
    );

    wire signed [N-1:0] diff_x = x0 - x1;
    wire signed [N-1:0] diff_y = y0 - y1;
    wire signed [N-1:0] two_r = 2 * radius;
    wire signed [2*N-1:0] sum = diff_x * diff_x + diff_y * diff_y;
    wire signed [2*N-1:0] r_sqr = two_r * two_r;
    assign collides = sum < r_sqr;

endmodule 