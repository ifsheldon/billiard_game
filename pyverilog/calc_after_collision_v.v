// Corresponding to calc_after_collision_velocity

module calc_after_collision_v
    #(parameter WIDTH = 32, FRAC_WIDTH = 30)
    (
        input clk,
        input rst,
        input signed [WIDTH-1:0] x0,
        input signed [WIDTH-1:0] y0,
        input signed [WIDTH-1:0] v0_x,
        input signed [WIDTH-1:0] v0_y,
        input signed [WIDTH-1:0] x1,
        input signed [WIDTH-1:0] y1,
        input signed [WIDTH-1:0] v1_x,
        input signed [WIDTH-1:0] v1_y,
        output done,
        output signed [WIDTH-1:0] new_v0_x,
        output signed [WIDTH-1:0] new_v0_y,
        output signed [WIDTH-1:0] new_v1_x,
        output signed [WIDTH-1:0] new_v1_y
    );
    parameter INT_WIDTH = WIDTH - FRAC_WIDTH ;
    parameter ONE = {FRAC_WIDTH{1'b1}} + 1;
    parameter ZERO = {WIDTH{1'b0}};

    // position and velocity of local frame origin w.r.t world coordinate
    wire signed [WIDTH-1:0] local_frame_origin_x_wc = x0;
    wire signed [WIDTH-1:0] local_frame_origin_y_wc = y0;
    wire signed [WIDTH-1:0] local_frame_velocity_x_wc = v0_x;
    wire signed [WIDTH-1:0] local_frame_velocity_y_wc = v0_y;
    // lc for local coordinate
    wire signed [WIDTH-1:0] ball2_v_x_lc = v1_x - local_frame_velocity_x_wc;
    wire signed [WIDTH-1:0] ball2_v_y_lc = v1_y - local_frame_velocity_y_wc;
    wire signed [WIDTH-1:0] ball2_pos_x_lc = x1 - local_frame_origin_x_wc;
    wire signed [WIDTH-1:0] ball2_pos_y_lc = y1 - local_frame_origin_y_wc;

    // reg signed [WIDTH-1:0] ball1_v_x_lc = ZERO;
    // reg signed [WIDTH-1:0] ball1_v_y_lc = ZERO;
    // reg signed [WIDTH-1:0] ball1_pos_x_lc = ZERO;
    // reg signed [WIDTH-1:0] ball1_pos_y_lc = ZERO;

    wire signed [WIDTH-1:0] ball1_v_lc_dir_x_after_collision;
    wire signed [WIDTH-1:0] ball1_v_lc_dir_y_after_collision;
    normalize #(WIDTH, FRAC_WIDTH) calc_ball1_v_lc_dir_after_collision (.clk(clk), .rst(rst),
                                                                        .x(-ball2_pos_x_lc),
                                                                        .y(-ball2_pos_y_lc),
                                                                        .z(ZERO),
                                                                        .done(done),
                                                                        .nx(ball1_v_lc_dir_x_after_collision),
                                                                        .ny(ball1_v_lc_dir_y_after_collision));
    
    wire signed [WIDTH-1:0] z_dir_z;
    cross_product #(WIDTH, FRAC_WIDTH) calc_z_dir_x (.x0(ball2_v_x_lc), .y0(ball2_v_y_lc), .z0(ZERO),
                                                    .x1(ball1_v_lc_dir_x_after_collision), .y1(ball1_v_lc_dir_y_after_collision), .z1(ZERO),
                                                    .z2(z_dir_z));
    wire signed [WIDTH-1:0] z_direction_z = z_dir_z > 0 ? ONE : -ONE;

    wire signed [WIDTH-1:0] ball2_v_lc_dir_x_after_collision;
    wire signed [WIDTH-1:0] ball2_v_lc_dir_y_after_collision;
    cross_product #(WIDTH, FRAC_WIDTH) calc_ball2_v_lc_dir_y_after_collision(.x0(ball1_v_lc_dir_x_after_collision), .y0(ball1_v_lc_dir_y_after_collision), .z0(ZERO),
                                                                            .x1(ZERO), .y1(ZERO), .z1(z_direction_z),
                                                                            .x2(ball2_v_lc_dir_x_after_collision), .y2(ball2_v_lc_dir_y_after_collision));
    wire signed [WIDTH-1:0] speed_after_collision0;
    wire signed [WIDTH-1:0] speed_after_collision1;
    mv #(WIDTH, FRAC_WIDTH) calc_speeds_after_collision (
        .x00(ball1_v_lc_dir_x_after_collision), .x01(ball1_v_lc_dir_y_after_collision),
        .x10(ball2_v_lc_dir_x_after_collision), .x11(ball2_v_lc_dir_x_after_collision),
        .vx(ball2_v_x_lc), .vy(ball2_v_y_lc),
        .ox(speed_after_collision0), .oy(speed_after_collision1)
    );

    wire signed [WIDTH-1:0] ball1_v_x_lc_after_collision;
    wire signed [WIDTH-1:0] ball1_v_y_lc_after_collision;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_ball1_v_x_lc_after_collision (ball1_v_lc_dir_x_after_collision, speed_after_collision0, ball1_v_x_lc_after_collision);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_ball1_v_y_lc_after_collision (ball1_v_lc_dir_y_after_collision, speed_after_collision0, ball1_v_y_lc_after_collision);

    wire signed [WIDTH-1:0] ball2_v_x_lc_after_collision;
    wire signed [WIDTH-1:0] ball2_v_y_lc_after_collision;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_ball2_v_x_lc_after_collision (ball2_v_lc_dir_x_after_collision, speed_after_collision1, ball2_v_x_lc_after_collision);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_ball2_v_y_lc_after_collision (ball2_v_lc_dir_y_after_collision, speed_after_collision1, ball2_v_y_lc_after_collision);

    assign new_v0_x = local_frame_velocity_x_wc + ball1_v_x_lc_after_collision;
    assign new_v0_y = local_frame_velocity_y_wc + ball1_v_y_lc_after_collision;
    assign new_v1_x = local_frame_velocity_x_wc + ball2_v_x_lc_after_collision;
    assign new_v1_y = local_frame_velocity_y_wc + ball2_v_y_lc_after_collision;

endmodule



