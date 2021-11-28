module next_pos_and_v
    #(parameter WIDTH = 32, FRAC_WIDTH = 30, RES_Y = 800)
    (
        input clk,
        input rst,
        input [10:0] mouse_x,
        input [10:0] mouse_y,
        input mouse_click,
        input [WIDTH-1:0] cueball_wc_x,
        input [WIDTH-1:0] cueball_wc_y,
        input [WIDTH-1:0] cueball_wc_vx,
        input [WIDTH-1:0] cueball_wc_vy,
        input [WIDTH-1:0] ball_wc_x,
        input [WIDTH-1:0] ball_wc_y,
        input [WIDTH-1:0] ball_wc_vx,
        input [WIDTH-1:0] ball_wc_vy,

        output [WIDTH-1:0] cueball_wc_x,
        output [WIDTH-1:0] cueball_wc_y,
        output [WIDTH-1:0] cueball_wc_vx,
        output [WIDTH-1:0] cueball_wc_vy,
        output [WIDTH-1:0] ball_wc_x,
        output [WIDTH-1:0] ball_wc_y,
        output [WIDTH-1:0] ball_wc_vx,
        output [WIDTH-1:0] ball_wc_vy, 
    );
    parameter ZERO = {WIDTH{1'b0}};

    wire [WIDTH-1:0] mouse_x_wc;
    wire [WIDTH-1:0] mouse_y_wc;
    sc_to_wc #(WIDTH, FRAC_WIDTH) mx_wc(mouse_x, mouse_y, RES_Y, mouse_x_wc, mouse_y_wc);
    wire [WIDTH-1:0] hit_direction_x =  mouse_x_wc - cueball_wc_x;
    wire [WIDTH-1:0] hit_direction_y =  mouse_y_wc - cueball_wc_y;
    wire [WIDTH-1:0] add_vx = mouse_click? hit_direction_x : ZERO;
    wire [WIDTH-1:0] add_vy = mouse_click? hit_direction_y : ZERO;

    assign cueball_wc_vx = cueball_wc_vx + add_vx;
    assign cueball_wc_vy = cueball_wc_vy + add_vy;

    # TODO: for i in range(num_balls):
    # TODO: for ball_i, ball_j in ball_pairs:



endmodule
    


