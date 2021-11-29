`timescale 1ns / 1ps

// this knows the resolution of 1229x749
module game_cpu
 #(parameter WIDTH = 32, FRAC_WIDTH = 30)
 (
        input clk, slow_clk, rst, left_click, right_click,
        input [11:0] pointer_x, pointer_y, 
        
        output [10:0] cue_ball_x,  red_ball1_x,
        output [9:0]  cue_ball_y,  red_ball1_y,
        output   cue_ball_disp, red_ball1_disp
    );
    
    reg [11:0] cue_ball_x_reg, cue_ball_y_reg = {12'd300, 12'd374};
    reg [11:0] red_ball1_x_reg, red_ball1_y_reg = {12'd870, 12'd374};
    
    reg [11:0] pointer_x_reg, pointer_y_reg;  
    always @(posedge clk) begin
        pointer_x_reg <= pointer_x;
        pointer_y_reg <= 11'd749 - pointer_y; // flip the y axis
    end


    wire [WIDTH-1:0] pointer_x_wc, pointer_y_wc;
    reg [WIDTH-1:0] cue_ball_x_wc = 32'd429496730;
    reg [WIDTH-1:0] cue_ball_y_wc = 32'd535439256;
    sc_to_wc #(WIDTH, FRAC_WIDTH) inst_sc_to_wc_pointer(pointer_x_reg, pointer_y_reg, 11'd749, pointer_x_wc, pointer_y_wc);


    wire signed [WIDTH-1:0] hit_direction_x =  $signed(pointer_x_wc) - $signed(cue_ball_x_wc);
    wire signed [WIDTH-1:0] hit_direction_y =  $signed(pointer_y_wc) - $signed(cue_ball_y_wc);
    reg  signed [WIDTH-1:0] cue_ball_vx_wc = 32'd0;
    reg  signed [WIDTH-1:0] cue_ball_vy_wc = 32'd0;
    
    wire signed [WIDTH-1:0] p_x_n, p_y_n, v_x_n, v_y_n;
    wire done;
    calc_next_p_and_v #(WIDTH, FRAC_WIDTH, 10) inst_cnpv(slow_clk, rst, 
                                                         cue_ball_x_wc, cue_ball_y_wc, 
                                                         cue_ball_vx_wc, cue_ball_vy_wc,
                                                         $signed(32'd13421773), $signed(32'd105226699), done,
                                                         p_x_n, p_y_n, v_x_n, v_y_n);

    reg signed [WIDTH-1:0] p_x_n_reg, p_y_n_reg, v_x_n_reg, v_y_n_reg;
    always @(posedge clk) begin
        p_x_n_reg <= p_x_n;
        p_y_n_reg <= p_y_n;
        v_x_n_reg <= v_x_n;
        v_y_n_reg <= v_y_n;
    end
    
    wire signed [WIDTH-1:0] p_x_rec, p_y_rec, v_x_rec, v_y_rec;
    rectify_p_v #(32) inst_rectify(32'd0, 32'd1760936591, 32'd0, 32'd1073741824,
                                   p_x_n_reg, p_y_n_reg, v_x_n_reg, v_y_n_reg, 
                                   p_x_rec, p_y_rec, v_x_rec, v_y_rec);
    
   
    always @(posedge slow_clk) begin
        if (rst) begin
            cue_ball_vx_wc  <= 32'd0;
            cue_ball_vy_wc  <= 32'd0;
            cue_ball_x_wc   <= 32'd429496730;
            cue_ball_y_wc   <= 32'd535439256;
        end
        else if (left_click) begin
            cue_ball_vx_wc <= hit_direction_x;
            cue_ball_vy_wc <= hit_direction_y;
        end
        else begin
            cue_ball_x_wc  <= p_x_rec;
            cue_ball_y_wc  <= p_y_rec;
            cue_ball_vx_wc <= v_x_rec;
            cue_ball_vy_wc <= v_y_rec;
        end
    end
    
    

    wire [10:0] cue_ball_x_sc, cue_ball_y_sc;
    wc_to_sc #(WIDTH) inst_wc_to_sc_cue_ball(cue_ball_x_wc, cue_ball_y_wc, 11'd749, cue_ball_x_sc, cue_ball_y_sc);
    always @(posedge clk) begin
          cue_ball_x_reg <= cue_ball_x_sc;
          cue_ball_y_reg <= 11'd749 - cue_ball_y_sc; //flip the y axis back
    end
    
    assign      {  cue_ball_x,  cue_ball_y } = {  cue_ball_x_reg[10:0],  cue_ball_y_reg[9:0] };
    assign      { red_ball1_x, red_ball1_y } = { red_ball1_x_reg[10:0], red_ball1_y_reg[9:0] };
    assign { cue_ball_disp, red_ball1_disp } = { 1'b1, 1'b0 };
    
    
endmodule
