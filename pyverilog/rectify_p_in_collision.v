// Corresponding to rectify_positions_in_collision
module rectify_p_in_collision
    #(parameter WIDTH = 32, FRAC_WIDTH = 30, EPS = 10)
    (
        input clk,
        input rst,
        input signed [WIDTH-1:0] x0,
        input signed [WIDTH-1:0] y0,
        input signed [WIDTH-1:0] x1,
        input signed [WIDTH-1:0] y1,
        input signed [WIDTH-1:0] radius,
        output done,
        output signed [WIDTH-1:0] new_x0,
        output signed [WIDTH-1:0] new_y0,
        output signed [WIDTH-1:0] new_x1,
        output signed [WIDTH-1:0] new_y1
    );
    parameter ZERO = {WIDTH{1'b0}};
    reg signed [WIDTH-1:0] epsilon = 1'b1 << EPS;

    wire signed [WIDTH-1:0] x0x1 = x0 - x1;
    wire signed [WIDTH-1:0] y0y1 = y0 - y1;
    wire signed [WIDTH-1:0] length;
    wire signed [WIDTH-1:0] collide_dir_x;
    wire signed [WIDTH-1:0] collide_dir_y;
    reg signed [WIDTH-1:0] collide_dir_x_reg = ZERO;
    reg signed [WIDTH-1:0] collide_dir_y_reg = ZERO;
    normalize #(WIDTH, FRAC_WIDTH) normalize_diff (.clk(clk), .rst(rst), 
                                                    .x(x0x1), .y(y0y1), .z(ZERO), 
                                                    .done(done), 
                                                    .length(length), 
                                                    .nx(collide_dir_x), .ny(collide_dir_y));
    always @(posedge clk) begin
        collide_dir_x_reg <= collide_dir_x;
        collide_dir_y_reg <= collide_dir_y;
    end
    
    reg signed [WIDTH-1:0] diff = ZERO;   //2 * radius - length + epsilon;
    reg signed [WIDTH-1:0] diff_2 = ZERO; // diff / 2;

    always @(posedge clk) begin
        diff  <= 2*radius - length + epsilon;
        diff_2 <= diff / 2;
    end

    wire signed [WIDTH-1:0] offset_x;
    wire signed [WIDTH-1:0] offset_y;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_offset_x (diff_2, collide_dir_x_reg, offset_x);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_offset_y (diff_2, collide_dir_y_reg, offset_y);

    assign new_x0 = x0 + offset_x;
    assign new_y0 = y0 + offset_y;
    assign new_x1 = x1 - offset_x;
    assign new_y1 = y1 - offset_y;

endmodule

