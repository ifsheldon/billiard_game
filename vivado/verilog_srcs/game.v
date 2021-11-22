`timescale 1ns / 1ps

module game(
    input clk,rst, left_click, right_click,
    // input [4:0] sw,
    input [11:0] col_sw,
    input [11:0] pointer_x, pointer_y,
    
    output [3:0] pix_r, pix_g, pix_b,
    output hsync, vsync
    );
    

    reg [19:0] clk_count = 20'd0;
    wire slow_clk;
    always@(negedge clk)
        clk_count <= clk_count + 1'b1;
    assign slow_clk = clk_count[19]; // 80hz clock
    
    wire [3:0] r, g, b;
    wire [10:0] curr_x, cue_ball_x, red_ball1_x;
    wire [9:0]  curr_y, cue_ball_y, red_ball1_y;
    wire cue_ball_disp, red_ball1_disp;
    
    game_cpu Inst_game_cpu (
                            // inputs
                            .clk(clk),
                            .rst(rst),
                            
                            .left_click(left_click),
                            .right_click(right_click),
                            
                            .pointer_x(pointer_x),
                            .pointer_y(pointer_y),
                            
                            // outputs
                            .cue_ball_x(cue_ball_x),
                            .cue_ball_y(cue_ball_y),
                            .cue_ball_disp(cue_ball_disp),
                            
                            .red_ball1_x(red_ball1_x),
                            .red_ball1_y(red_ball1_y),
                            .red_ball1_disp(red_ball1_disp)
                           );
    
    
    
    render_engine Inst_render_engine(
                                     // inputs
                                     .col_sw(col_sw), 
                                     
                                     .curr_x(curr_x),
                                     .curr_y(curr_y),
                                     
                                     .pointer_x(pointer_x[10:0]),  
                                     .pointer_y(pointer_y[9:0]), 

                                     .cue_ball_x(cue_ball_x),
                                     .cue_ball_y(cue_ball_y),
                                     .cue_ball_disp(cue_ball_disp),
                                     
                                     .red_ball1_x(red_ball1_x),
                                     .red_ball1_y(red_ball1_y),
                                     .red_ball1_disp(red_ball1_disp),

                                     // outputs
                                     .r(r), 
                                     .g(g), 
                                     .b(b)
                                     );
    
    vga_out Inst_vga_out(
                         .clk(clk), 
                         .draw_r(r), 
                         .draw_g(g), 
                         .draw_b(b), 
                    
                         .pix_r(pix_r), 
                         .pix_g(pix_g), 
                         .pix_b(pix_b), 
                         .hsync(hsync), 
                         .vsync(vsync), 
                    
                         .curr_x(curr_x), 
                         .curr_y(curr_y)
                         );
        
    
    // always@(negedge slow_clk) begin
    //     case (sw)
    //         5'd0 : begin end
    //         5'd1 : begin
    //             blkpos_x <= 11'd639;
    //             blkpos_y <= 10'd399;
    //         end
    //         // going to right
    //         5'd2 : begin
    //             if (blkpos_x < 11'd1237)
    //                 blkpos_x <= blkpos_x + 11'd5;
    //         end        
    //         // going up
    //         5'd4 : begin
    //             if(blkpos_y > 10'd10)
    //                 blkpos_y <= blkpos_y - 10'd5;
    //         end
    //         // going left
    //         5'd8 : begin
    //             if (blkpos_x > 11'd10)
    //                 blkpos_x <= blkpos_x - 11'd5;
    //         end
    //         // giong down
    //         5'd16 : begin
    //             if (blkpos_y < 10'd757)
    //                 blkpos_y <= blkpos_y + 10'd5;
    //         end
                        
    //         default: begin
    //             blkpos_x <= 11'd639;
    //             blkpos_y <= 10'd399;                
    //         end
        
    //     endcase
    
    // end        
       
    
    
    
    
endmodule
