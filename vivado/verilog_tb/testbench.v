`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.11.2021 20:40:25
// Design Name: 
// Module Name: top_tb
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


module top_tb();

    reg [10:0] x, y, res_y;
    wire [11:0] x_wc, y_wc;
    integer i;
    sc_to_wc #(12, 10) inst_sc_to_wc(.x(x), .y(y), .res_y(res_y), .x_wc(x_wc), .y_wc(y_wc));
    
    
    
    initial begin
        {x, y, res_y} = {11'b0, 11'b0, 11'd800};
        #10;  
        for (i=0; i < 10; i=i+1) begin
            x = $urandom%1280;
            y = $urandom%800;
            res_y = 11'd800;
            #20;
            $display("Current input = (%d, %d), Output = (%f, %f)", x, y, $itor(x_wc)*2**(-10.0), $itor(y_wc)*2**(-10.0));        
        end  
        $finish;
    end

endmodule
