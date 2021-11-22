`timescale 1ns / 1ps

module render_engine(
    input [10:0] curr_x, pointer_x, cue_ball_x, red_ball1_x,
    input  [9:0] curr_y, pointer_y, cue_ball_y, red_ball1_y,
    input cue_ball_disp, red_ball1_disp,
    input [11:0] col_sw,
    output [3:0] r, g, b
    );
    
    // pointer color
    reg [3:0] pointer_r = 4'd8;
    reg [3:0] pointer_g = 4'd8;
    reg [3:0] pointer_b = 4'd8;
    
    reg [10:0] pointer_x_reg = 11'd0;
    reg [9:0]  pointer_y_reg = 10'd0;
    


    reg [3:0] r_output = 4'd0;
    reg [3:0] g_output = 4'd15;
    reg [3:0] b_output = 4'd0;

    reg ballsprite [0:961];
//    reg pocketsprite [0:1521];
    reg val;
    initial
    begin
        $readmemb("./ballsprite.txt", ballsprite, 0, 961);
//        $readmemb("./pocketsprite.txt", pocketsprite, 0, 1521);

    end
    
    
    always @* 
        {pointer_r, pointer_g, pointer_b} = {col_sw[11:8], col_sw[7:4], col_sw[3:0]};
    
    
    // add black border
    always @* begin
        
        // add black borders
        if (curr_x <= 11'd10 || curr_x >= 11'd1269 || curr_y <= 10'd10 || curr_y >= 10'd789)
            {r_output, g_output, b_output} = {4'd0, 4'd0, 4'd0};
        
        // add pointer
        else if ( curr_y >= (pointer_y+10'd10)       && 
             curr_y < (pointer_y+10'd10)+10'd31 && 
             curr_x >= (pointer_x+11'd10)       && 
             curr_x <= (pointer_x+11'd10)+11'd31)
        begin
            if (ballsprite[(curr_y-(pointer_y+10'd10))*5'd31+(curr_x-(pointer_x+11'd10))])
                {r_output, g_output, b_output} = {pointer_r, pointer_g, pointer_b};
            else
                {r_output, g_output, b_output} = {4'd0, 4'd15, 4'd0};
        end
        
        // add cue ball
        else if (curr_y >= (cue_ball_y+10'd10) && curr_y < (cue_ball_y+10'd10)+10'd31 && curr_x >= (cue_ball_x+11'd10) && curr_x <= (cue_ball_x+11'd10)+11'd31)
        begin
            if (ballsprite[(curr_y-(cue_ball_y+10'd10))*5'd31+(curr_x-(cue_ball_x+11'd10))])
                {r_output, g_output, b_output} = {4'd15, 4'd15, 4'd15};
            else
                {r_output, g_output, b_output} = {4'd0, 4'd15, 4'd0};
        end

        // add red ball
        else if (curr_y >= (red_ball1_y+10'd10) && curr_y < (red_ball1_y+10'd10)+10'd31 && curr_x >= (red_ball1_x+11'd10) && curr_x <= (red_ball1_x+11'd10)+11'd31)
        begin
            if (ballsprite[(curr_y-(red_ball1_y+10'd10))*5'd31+(curr_x-(red_ball1_x+11'd10))])
                {r_output, g_output, b_output} = {4'd15, 4'd0, 4'd0};
            else
                {r_output, g_output, b_output} = {4'd0, 4'd15, 4'd0};
        end
        
        else
            {r_output, g_output, b_output} = {4'd0, 4'd15, 4'd0};    
    end    
    assign {r,g,b} = {r_output, g_output, b_output};
    
    
endmodule