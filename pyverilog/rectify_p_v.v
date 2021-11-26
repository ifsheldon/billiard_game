// corresponding to: billiard_game_single_ball.rectify_positions_and_velocities
module rectify_p_v
    #(parameter N = 32)
    (
        input signed [N-1:0] bound_x_low, 
        input signed [N-1:0] bound_x_high, 
        input signed [N-1:0] bound_y_low, 
        input signed [N-1:0] bound_y_high, 
        input signed [N-1:0] p_x, 
        input signed [N-1:0] p_y,
        input signed [N-1:0] v_x,
        input signed [N-1:0] v_y,
        output signed [N-1:0] new_p_x,
        output signed [N-1:0] new_p_y,
        output signed [N-1:0] new_v_x,
        output signed [N-1:0] new_v_y
    );
    parameter ZERO = {N{1'b0}};

    wire signed [N-1:0] x_high_residual = p_x < bound_x_high ? ZERO : p_x - bound_x_high;
    wire signed [N-1:0] y_high_residual = p_y < bound_y_high ? ZERO : p_y - bound_y_high;

    wire signed [N-1:0] x_low_residual = p_x < bound_x_low ? p_x - bound_x_low : ZERO;
    wire signed [N-1:0] y_low_residual = p_y < bound_y_low ? p_y - bound_y_low : ZERO;

    assign new_p_x = p_x - x_high_residual - x_low_residual;
    assign new_p_y = p_y - y_high_residual - y_low_residual;

    wire need_reverse_x_velocity = (x_high_residual > 0) | (x_low_residual < 0);
    wire need_reverse_y_velocity = (y_high_residual > 0) | (y_low_residual < 0);

    assign new_v_x = need_reverse_x_velocity? -v_x : v_x;
    assign new_v_y = need_reverse_y_velocity? -v_y : v_y;

endmodule

