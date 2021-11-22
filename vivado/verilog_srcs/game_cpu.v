`timescale 1ns / 1ps

// this knows the resolution of 1229x749
module game_cpu(
        input clk, rst, left_click, right_click,
        input [11:0] pointer_x, pointer_y, 
        
        output [10:0] cue_ball_x,  red_ball1_x,
        output [9:0]  cue_ball_y,  red_ball1_y,
        output   cue_ball_disp, red_ball1_disp
    );
    
    reg [11:0] cue_ball_reg [0:2], red_ball1_reg[0:2];
    initial
    begin
         cue_ball_reg[0]  = 12'd300;
         cue_ball_reg[1]  = 12'd400;
         
         red_ball1_reg[0] = 12'd870;
         red_ball1_reg[1] = 12'd400;
    end
    
    always @(posedge clk) begin
        if (rst) begin
            // positioning the cue_ball
            cue_ball_reg[0] <= 12'd300;
            cue_ball_reg[1] <= 12'd400;
            
            // positioning the red balls
            red_ball1_reg[0] <= 12'd870;
            red_ball1_reg[1] <= 12'd400;
        end
        
        else if (left_click) begin
            cue_ball_reg[0] <= pointer_x;
            cue_ball_reg[1] <= pointer_y;
        end

        else if (right_click) begin
            red_ball1_reg[0] <= pointer_x;
            red_ball1_reg[1] <= pointer_y;
        end

        
    end
   
    assign {  cue_ball_x,  cue_ball_y }      = {  cue_ball_reg[0][10:0],  cue_ball_reg[1][9:0] };
    assign { red_ball1_x, red_ball1_y }      = { red_ball1_reg[0][10:0], red_ball1_reg[1][9:0] };
    assign { cue_ball_disp, red_ball1_disp } = { 1'b1, 1'b1 };
    
    
endmodule
