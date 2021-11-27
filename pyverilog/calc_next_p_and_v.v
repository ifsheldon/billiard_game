// corresponding to calc_next_pos_and_velocity()
module calc_next_p_and_v
    #(parameter WIDTH = 32, FRAC_WIDTH = 30, TOL = 10)
    (
        input clk,
        input rst,
        input signed [WIDTH-1:0] p_x,
        input signed [WIDTH-1:0] p_y,
        input signed [WIDTH-1:0] v_x,
        input signed [WIDTH-1:0] v_y,
        input signed [WIDTH-1:0] delta_t,
        input signed [WIDTH-1:0] friction_coeff,
        output done,
        output signed [WIDTH-1:0] p_x_next,
        output signed [WIDTH-1:0] p_y_next,
        output signed [WIDTH-1:0] v_x_next,
        output signed [WIDTH-1:0] v_y_next
    );

    parameter ZERO = {WIDTH{1'b0}};
    wire signed [WIDTH - 1:0] dir_x;
    wire signed [WIDTH - 1:0] dir_y;
    wire signed [WIDTH - 1:0] speed;
    wire speed_close_to_0;

    normalize #(WIDTH, FRAC_WIDTH) normalize_velocity (.clk(clk), .rst(rst), 
                                                        .x(v_x), .y(v_y), .z(ZERO), 
                                                        .done(done), 
                                                        .length(speed), 
                                                        .nx(dir_x), .ny(dir_y));
    
    close_to_zero #(WIDTH, TOL) close_to_0 (.num(speed), .close(speed_close_to_0));

    wire signed [WIDTH - 1:0] drag_force_x;
    wire signed [WIDTH - 1:0] drag_force_y;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_drag_force_x (friction_coeff, dir_x, drag_force_x);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_drag_force_y (friction_coeff, dir_y, drag_force_y);

    wire signed [WIDTH - 1:0] v_delta_x;
    wire signed [WIDTH - 1:0] v_delta_y;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_v_delta_x (delta_t, drag_force_x, v_delta_x);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_v_delta_y (delta_t, drag_force_y, v_delta_y);
    

    wire signed [WIDTH - 1:0] avg_v_x = v_x_next / 2 + v_x / 2;
    wire signed [WIDTH - 1:0] avg_v_y = v_y_next / 2 + v_y / 2;
    wire signed [WIDTH - 1:0] displacement_x;
    wire signed [WIDTH - 1:0] displacement_y;
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_displacement_x (delta_t, avg_v_x, displacement_x);
    fix_point_multiply #(WIDTH, FRAC_WIDTH) calc_displacement_y (delta_t, avg_v_y, displacement_y);

    assign v_x_next = speed_close_to_0? ZERO : (v_x - v_delta_x);
    assign v_y_next = speed_close_to_0? ZERO : (v_y - v_delta_y);
    assign p_x_next = speed_close_to_0? p_x : (p_x + displacement_x);
    assign p_y_next = speed_close_to_0? p_y : (p_y + displacement_y);

endmodule



