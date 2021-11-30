`timescale 1ns / 1ps

module render_engine(
    input clk, rst,
    input [10:0] curr_x, pointer_x, cue_ball_x, red_ball1_x,
    input  [9:0] curr_y, pointer_y, cue_ball_y, red_ball1_y,
    input cue_ball_disp, red_ball1_disp,
    input [11:0] col_sw,
    output [3:0] r, g, b
    );

    reg [3:0] r_output = 4'd0;
    reg [3:0] g_output = 4'd15;
    reg [3:0] b_output = 4'd0;

    reg ballsprite [0:961];
    initial
    begin
        $readmemb("./ballsprite.txt", ballsprite, 0, 961);
    end
    
    // ----------------------------  registering counts ----------------------------
    reg [10:0] curr_x_reg;
    reg  [9:0] curr_y_reg;
    always @(posedge clk) begin
        curr_x_reg  <=  curr_x;
        curr_y_reg  <=  curr_y;
    end 


    // ---------------------------- boundary display logic -------------------------
    reg disp_boundary;
    always @(posedge clk) 
        disp_boundary <= (curr_x_reg <= 11'd10 || curr_x_reg >= 11'd1269 || curr_y_reg <= 10'd10 || curr_y_reg >= 10'd789);


    // ---------------------------- pocket display logic --------------------------
    reg p1_disp, p2_disp, p3_disp, p4_disp;
    reg [9:0] p1_addr, p2_addr, p3_addr, p4_addr;
    always @ (posedge clk) begin
        p1_disp  <= ( curr_x_reg < 11'd35 && curr_y_reg < 10'd35);  
        p1_addr  <= (curr_y_reg-10'd35)*5'd31 + (curr_x_reg-11'd35);

        p2_disp  <= ( curr_x_reg > 11'd1244 && curr_y_reg < 10'd35);  
        p2_addr  <= (curr_y_reg-10'd35)*5'd31 + (curr_x_reg-11'd1244);

        p3_disp  <= ( curr_x_reg < 11'd35 && curr_y_reg > 10'd764);  
        p3_addr  <= (curr_y_reg-10'd764)*5'd31 + (curr_x_reg-11'd35);

        p4_disp  <= ( curr_x_reg > 11'd1244 && curr_y_reg > 10'd764);  
        p4_addr  <= (curr_y_reg-10'd764)*5'd31 + (curr_x_reg-11'd1244);
    end

    // ---------------------------- pointer display logic --------------------------
    reg [10:0] pointer_x_reg;
    reg  [9:0] pointer_y_reg;
    reg disp_pointer;
    reg [9:0] pointer_addr;
    always @ (posedge clk) begin
        pointer_x_reg <= pointer_x + 11'd10;
        pointer_y_reg <= pointer_y + 10'd10;
        disp_pointer <= ( curr_y_reg >= (pointer_y_reg)        && 
                          curr_y_reg <  (pointer_y_reg+10'd31) && 
                          curr_x_reg >= (pointer_x_reg)        && 
                          curr_x_reg <= (pointer_x_reg+11'd31) );
        pointer_addr <= (curr_y_reg-pointer_y_reg)*5'd31 + (curr_x_reg-pointer_x_reg);
    end
    
    
    // ---------------------------- cue ball display logic --------------------------
    reg [10:0] cue_ball_x_reg;
    reg  [9:0] cue_ball_y_reg;
    reg disp_cue_ball;
    reg [9:0] cue_ball_addr;
    always @ (posedge clk) begin
        cue_ball_x_reg <= cue_ball_x + 11'd10;
        cue_ball_y_reg <= cue_ball_y + 10'd10;
        disp_cue_ball  <= ( curr_y_reg >= (cue_ball_y_reg)        && 
                            curr_y_reg <  (cue_ball_y_reg+10'd31) && 
                            curr_x_reg >= (cue_ball_x_reg)        && 
                            curr_x_reg <= (cue_ball_x_reg+11'd31) );  

        cue_ball_addr <= (curr_y_reg-cue_ball_y_reg)*5'd31 + (curr_x_reg-cue_ball_x_reg); 
    end

    // ---------------------------- red ball1 display logic --------------------------
    reg [10:0] red_ball1_x_reg;
    reg  [9:0] red_ball1_y_reg;
    reg disp_red_ball1;
    reg [9:0] red_ball1_addr;
    always @ (posedge clk) begin
        red_ball1_x_reg <= red_ball1_x + 11'd10;
        red_ball1_y_reg <= red_ball1_y + 10'd10;
        disp_red_ball1 <= ( curr_y_reg >= (red_ball1_y_reg)        && 
                           curr_y_reg <  (red_ball1_y_reg+10'd31) && 
                           curr_x_reg >= (red_ball1_x_reg)        && 
                           curr_x_reg <= (red_ball1_x_reg+11'd31) );  
        red_ball1_addr <= (curr_y_reg-red_ball1_y_reg)*5'd31 + (curr_x_reg-red_ball1_x_reg); 
    end
    
    always @(posedge clk)
    begin
        
        // add black borders
        if (disp_boundary)
            {r_output, g_output, b_output} <= {4'd0, 4'd0, 4'd0};        
        
        // add pointer
        else if (disp_pointer && ballsprite[pointer_addr])
                {r_output, g_output, b_output} <= {4'd8, 4'd8, 4'd8};       
        
        // add cue ball
        else if (cue_ball_disp && disp_cue_ball && ballsprite[cue_ball_addr])
                {r_output, g_output, b_output} <= {4'd15, 4'd15, 4'd15};
        
        // add red ball
        else if (red_ball1_disp && disp_red_ball1 && ballsprite[red_ball1_addr])
                {r_output, g_output, b_output} <= {4'd15, 4'd0, 4'd0};        
        
        // add p1
        else if (p1_disp && ballsprite[p1_addr])
            {r_output, g_output, b_output} <= {4'd10, 4'd5, 4'd0};

        // add p2
        else if (p2_disp && ballsprite[p2_addr])
            {r_output, g_output, b_output} <= {4'd10, 4'd5, 4'd0};

        // add p3
        else if (p3_disp && ballsprite[p3_addr])
            {r_output, g_output, b_output} <= {4'd10, 4'd5, 4'd0};

        // add p4
        else if (p4_disp && ballsprite[p4_addr])
            {r_output, g_output, b_output} <= {4'd10, 4'd5, 4'd0};

        else
            {r_output, g_output, b_output} <= {4'd0, 4'd15, 4'd0};    
        
    end    
    
    assign {r,g,b} = {r_output, g_output, b_output};
    
    
endmodule