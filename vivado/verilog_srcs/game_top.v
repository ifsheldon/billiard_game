`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.10.2021 00:41:25
// Design Name: 
// Module Name: game_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module drawcon(
    input [10:0] blkpos_x, curr_x,
    input  [9:0] blkpos_y, curr_y,
    input [11:0] col_sw,
    output [3:0] r, g, b
    );
    
    reg [3:0] bg_r = 4'd0;
    reg [3:0] bg_g = 4'd15;
    reg [3:0] bg_b = 4'd0;
    
    reg [3:0] blk_r = 4'd15;
    reg [3:0] blk_g = 4'd0;
    reg [3:0] blk_b = 4'd0;
    
    
    reg [3:0] r_output = 4'd0;
    reg [3:0] g_output = 4'd0;
    reg [3:0] b_output = 4'd0;

    reg ballsprite [0:961];
    reg val;
    initial
    begin
        $readmemb("./ballsprite.txt", ballsprite, 0, 961);
    end
    
    
    always @* 
        {blk_r, blk_g, blk_b} = {col_sw[11:8], col_sw[7:4], col_sw[3:0]};
    
    // add black border and draw shape (rectangle 32x32)
    always @* begin
        // add black borders
        if (curr_x < 11'd10 || curr_x >= 11'd1269 || curr_y < 10'd10 || curr_y >= 10'd789)
            {r_output, g_output, b_output} = {4'd0, 4'd0, 4'd0};
        // add shape
        else if (curr_y >= blkpos_y && curr_y < blkpos_y+10'd31 && curr_x >= blkpos_x && curr_x <= blkpos_x+11'd31)
        begin
            if (ballsprite[(curr_y-blkpos_y)*5'd31+(curr_x-blkpos_x)])
                {r_output, g_output, b_output} = {blk_r, blk_g, blk_b};
            else
                {r_output, g_output, b_output} = {bg_r, bg_g, bg_b};
        end
        else
            {r_output, g_output, b_output} = {bg_r, bg_g, bg_b};    
    end    
    assign {r,g,b} = {r_output, g_output, b_output};
    
    
endmodule


module game_top(
    input clk, rst,
    input [4:0] sw,
    input [11:0] col_sw,
    output [3:0] pix_r, pix_g, pix_b,
    output hsync, vsync
    );
    

    reg [19:0] clk_count = 20'd0;
    wire slow_clk;
    always@(negedge clk)
        clk_count <= clk_count + 1'b1;
    assign slow_clk = clk_count[19]; // 80hz clock
    
    wire [3:0] r, g, b;
    wire [10:0] curr_x;
    wire [9:0] curr_y;
    reg  [10:0] blkpos_x = 11'd639;
    reg  [9:0] blkpos_y = 10'd399;
    
    drawcon draw_module(.col_sw(col_sw), .blkpos_x(blkpos_x), .curr_x(curr_x), .blkpos_y(blkpos_y), 
                        .curr_y(curr_y), .r(r), .g(g), .b(b));
    
    vga_out vga_controller(.clk(clk), .rst(rst), .draw_r(r), .draw_g(g), .draw_b(b), .pix_r(pix_r), .pix_g(pix_g), 
                           .pix_b(pix_b), .hsync(hsync), .vsync(vsync), .curr_x(curr_x), .curr_y(curr_y));
        
    
    always@(negedge slow_clk) begin
        case (sw)
            5'd0 : begin end
            5'd1 : begin
                blkpos_x <= 11'd639;
                blkpos_y <= 10'd399;
            end
            // going to right
            5'd2 : begin
                if (blkpos_x < 11'd1237)
                    blkpos_x <= blkpos_x + 11'd5;
            end        
            // going up
            5'd4 : begin
                if(blkpos_y > 10'd10)
                    blkpos_y <= blkpos_y - 10'd5;
            end
            // going left
            5'd8 : begin
                if (blkpos_x > 11'd10)
                    blkpos_x <= blkpos_x - 11'd5;
            end
            // giong down
            5'd16 : begin
                if (blkpos_y < 10'd757)
                    blkpos_y <= blkpos_y + 10'd5;
            end
                        
            default: begin
                blkpos_x <= 11'd639;
                blkpos_y <= 10'd399;                
            end
        
        endcase
    
    end        
       
    
    
    
    
endmodule
