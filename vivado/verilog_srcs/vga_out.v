`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2021 21:06:27
// Design Name: 
// Module Name: vga_out
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


module vga_out(
    
    input clk, rst,
    input [3:0] draw_r, draw_g, draw_b,
    
    output [3:0] pix_r, pix_g, pix_b,
    output hsync, vsync,
    output [10:0] curr_x, 
    output [9:0] curr_y
    
    );
    
    reg [10:0] hcount = 11'd0;
    reg  [9:0] vcount = 10'd0;
     
    // Count increment
    always @(negedge clk)
    begin
        if(hcount == 11'd1679)
        begin
            hcount <= 11'd0;
            if (vcount == 10'd931)
                vcount <= 10'd0;
            else
                vcount <= vcount + 1'b1;
        end
        else
            hcount <= hcount + 1'b1;       
    end  
    
    assign hsync = (hcount <= 11'd135) ? 1'b0 : 1'b1;
    assign vsync = (vcount <= 10'd2)   ? 1'b1 : 1'b0;

    assign pix_r = (hcount >= 11'd336 && hcount <= 11'd1615 && vcount >= 10'd27 && vcount <= 10'd826) ? draw_r : 4'd0;
    assign pix_g = (hcount >= 11'd336 && hcount <= 11'd1615 && vcount >= 10'd27 && vcount <= 10'd826) ? draw_g : 4'd0;
    assign pix_b = (hcount >= 11'd336 && hcount <= 11'd1615 && vcount >= 10'd27 && vcount <= 10'd826) ? draw_b : 4'd0;

    assign curr_x = (hcount >= 11'd336 && hcount <= 11'd1615 && vcount >= 10'd27 && vcount <= 10'd826) ? hcount - 11'd336 : 11'd0;
    assign curr_y = (hcount >= 11'd336 && hcount <= 11'd1615 && vcount >= 10'd27 && vcount <= 10'd826) ? vcount - 10'd27  : 10'd0;

endmodule
