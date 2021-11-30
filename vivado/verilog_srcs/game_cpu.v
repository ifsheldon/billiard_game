`timescale 1ns / 1ps

// this knows the resolution of 1229x749
module game_cpu
 #(parameter WIDTH = 32, FRAC_WIDTH = 30)
 (
        input clk, slow_clk, clk_mid, rst, left_click, right_click,
        input [11:0] pointer_x, pointer_y, 
        
        output [10:0] cue_ball_x,  red_ball1_x,
        output [9:0]  cue_ball_y,  red_ball1_y,
        output   cue_ball_disp, red_ball1_disp,
        output [11:0] score, shots
    );
    
    reg [11:0] cue_ball_x_reg, cue_ball_y_reg = {12'd300, 12'd374};
    reg [11:0] red_ball1_x_reg, red_ball1_y_reg = {12'd870, 12'd374};

    // ----------------------------- Display Conditions ---------------------------------
    reg cb_disp, rb_disp = {1'b1, 1'b1};
    always @(posedge clk_mid) begin
        if (rst)
            cb_disp <= 1'b1;
        else if (cue_ball_x_reg < 12'd25 && cue_ball_y_reg < 12'd25)
            cb_disp <= 1'b0;
        else if (cue_ball_x_reg > 12'd1204 && cue_ball_y_reg < 12'd25)
            cb_disp <= 1'b0;
        else if (cue_ball_x_reg < 12'd25 && cue_ball_y_reg > 12'd724)
            cb_disp <= 1'b0;
        else if (cue_ball_x_reg > 12'd1204 && cue_ball_y_reg > 12'd724)
            cb_disp <= 1'b0;
    end

    always @(posedge clk_mid) begin
        if (rst)
            rb_disp <= 1'b1;
        else if (red_ball1_x_reg < 12'd25 && red_ball1_y_reg < 12'd25)
            rb_disp <= 1'b0;
        else if (red_ball1_x_reg > 12'd1204 && red_ball1_y_reg < 12'd25)
            rb_disp <= 1'b0;
        else if (red_ball1_x_reg < 12'd25 && red_ball1_y_reg > 12'd724)
            rb_disp <= 1'b0;
        else if (red_ball1_x_reg > 12'd1204 && red_ball1_y_reg > 12'd724)
            rb_disp <= 1'b0;
    end

    assign {shots, score} = {12'd0, 12'd0};

    // ----------------------------- Registering the pointer position ---------------------------------
    reg [11:0] pointer_x_reg, pointer_y_reg;  
    always @(posedge clk) begin
        pointer_x_reg <= pointer_x;
        pointer_y_reg <= 11'd749 - pointer_y; // flip the y axis
    end

    // ----------------------------- Calculating the Position and velocity vectors ---------------------------------
    wire [WIDTH-1:0] pointer_x_wc, pointer_y_wc;
    reg [WIDTH-1:0] cue_ball_x_wc = 32'd429496730;
    reg [WIDTH-1:0] cue_ball_y_wc = 32'd535439256;
    reg  signed [WIDTH-1:0] cue_ball_vx_wc = 32'd0;
    reg  signed [WIDTH-1:0] cue_ball_vy_wc = 32'd0;
    sc_to_wc #(WIDTH, FRAC_WIDTH) inst_sc_to_wc_pointer(pointer_x_reg, pointer_y_reg, 11'd749, pointer_x_wc, pointer_y_wc);
    wire signed [WIDTH-1:0] hit_direction_x =  $signed(pointer_x_wc) - $signed(cue_ball_x_wc);
    wire signed [WIDTH-1:0] hit_direction_y =  $signed(pointer_y_wc) - $signed(cue_ball_y_wc);

    
    // ----------------------------- Updating the vectors ---------------------------------
    // for cue ball
    wire signed [WIDTH-1:0] p_x_n, p_y_n, v_x_n, v_y_n;
    wire done;
    calc_next_p_and_v #(WIDTH, FRAC_WIDTH, 10) inst_cnpv(clk_mid, rst, 
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

    // for red ball
    reg [WIDTH-1:0] red_ball1_x_wc = 32'd1245540516;
    reg [WIDTH-1:0] red_ball1_y_wc = 32'd535439256;
    reg  signed [WIDTH-1:0] red_ball1_vx_wc = 32'd0;
    reg  signed [WIDTH-1:0] red_ball1_vy_wc = 32'd0;
    
    wire signed [WIDTH-1:0] rp_x_n, rp_y_n, rv_x_n, rv_y_n;
    wire rdone;
    calc_next_p_and_v #(WIDTH, FRAC_WIDTH, 10) inst_rcnpv(clk_mid, rst, 
                                                         red_ball1_x_wc, red_ball1_y_wc, 
                                                         red_ball1_vx_wc, red_ball1_vy_wc,
                                                         $signed(32'd13421773), $signed(32'd105226699), rdone,
                                                         rp_x_n, rp_y_n, rv_x_n, rv_y_n);

    reg signed [WIDTH-1:0] rp_x_n_reg, rp_y_n_reg, rv_x_n_reg, rv_y_n_reg;
    always @(posedge clk) begin
            rp_x_n_reg <= rp_x_n;
            rp_y_n_reg <= rp_y_n;
            rv_x_n_reg <= rv_x_n;
            rv_y_n_reg <= rv_y_n;
    end

    
    // ----------------------------- Rectifying the vectors ---------------------------------
    // for cue ball
    wire signed [WIDTH-1:0] p_x_rec, p_y_rec, v_x_rec, v_y_rec;
    rectify_p_v #(WIDTH) inst_rectify(32'd0, 32'd1760936591, 32'd0, 32'd1073741824,
                                   p_x_n_reg, p_y_n_reg, v_x_n_reg, v_y_n_reg, 
                                   p_x_rec, p_y_rec, v_x_rec, v_y_rec);
    
    // for red ball
    wire signed [WIDTH-1:0] rp_x_rec, rp_y_rec, rv_x_rec, rv_y_rec;
    rectify_p_v #(WIDTH) inst_rrectify(32'd0, 32'd1760936591, 32'd0, 32'd1073741824,
                                   rp_x_n_reg, rp_y_n_reg, rv_x_n_reg, rv_y_n_reg, 
                                   rp_x_rec, rp_y_rec, rv_x_rec, rv_y_rec);

    
    reg signed [WIDTH-1:0] cb_x_ar, cb_y_ar, cb_vx_ar, cb_vy_ar, rb_x_ar, rb_y_ar, rb_vx_ar, rb_vy_ar;
    always @(posedge clk) begin
        cb_x_ar <= p_x_rec;
        cb_y_ar <= p_y_rec;
        cb_vx_ar <= v_x_rec;
        cb_vy_ar <= v_y_rec;

        rb_x_ar <= rp_x_rec;
        rb_y_ar <= rp_y_rec;
        rb_vx_ar <= rv_x_rec;
        rb_vy_ar <= rv_y_rec;        
    
    end
    
    // ----------------------------- Collision detection ---------------------------------
    wire ball_collides;
    ball_collision_detect #(WIDTH) inst_bcd(cb_x_ar, cb_y_ar, 
                                            rb_x_ar, rb_y_ar,
                                            32'd21474836, ball_collides);
 
 
    // ----------------------------- Position in collision ---------------------------------    
    wire done2;
    wire signed [WIDTH-1:0] cue_ball_x_ac, cue_ball_y_ac, red_ball_x_ac, red_ball_y_ac;
    rectify_p_in_collision #(WIDTH, FRAC_WIDTH, 10) inst_rpic(clk_mid, rst, cb_x_ar, cb_y_ar,
                                                              rb_x_ar, rb_y_ar, 32'd21474836,
                                                              done2, cue_ball_x_ac, cue_ball_y_ac,
                                                              red_ball_x_ac, red_ball_y_ac);
    reg signed [WIDTH-1:0] cb_x_ac, cb_y_ac, rb_x_ac, rb_y_ac;
    always @(posedge clk_mid) begin
        if (ball_collides && cb_disp && rb_disp) begin
            cb_x_ac <= cue_ball_x_ac;
            cb_y_ac <= cue_ball_y_ac;
            rb_x_ac <= red_ball_x_ac;
            rb_y_ac <= red_ball_y_ac;
        end
        else begin
            cb_x_ac <= cb_x_ar;
            cb_y_ac <= cb_y_ar;
            rb_x_ac <= rb_x_ar;
            rb_y_ac <= rb_y_ar;
        end
    
    end
   
      // ----------------------------- Velocity in Collision ---------------------------------
     wire done3;
     wire signed [WIDTH-1:0] nv_x_c, nv_y_c, nv_x_r, nv_y_r;
     calc_after_collision_v #(WIDTH, FRAC_WIDTH) inst_cacv(clk_mid, rst, cb_x_ac, cb_y_ac, cb_vx_ar, cb_vy_ar,
                                                           rb_x_ac, rb_y_ac, rb_vx_ar, rb_vy_ar,
                                                           done3, nv_x_c, nv_y_c, nv_x_r, nv_y_r);

     reg signed [WIDTH-1:0] cb_vx_ac, cb_vy_ac, rb_vx_ac, rb_vy_ac;
     always @(posedge clk_mid) begin
         if (ball_collides && cb_disp && rb_disp) begin
             cb_vx_ac <= nv_x_c;
             cb_vy_ac <= nv_y_c;
             rb_vx_ac <= nv_x_r;
             rb_vy_ac <= nv_y_r;
         end
         else begin
             cb_vx_ac <= cb_vx_ar;
             cb_vy_ac <= cb_vy_ar;
             rb_vx_ac <= rb_vx_ar;
             rb_vy_ac <= rb_vy_ar;
         end
    
     end    
    
   // ----------------------------- Assigning the Vectors ---------------------------------
   // for cue ball 
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
            cue_ball_x_wc  <= cb_x_ac;
            cue_ball_y_wc  <= cb_y_ac;
            cue_ball_vx_wc <= cb_vx_ac;
            cue_ball_vy_wc <= cb_vy_ac;
        end
    end

    // for red ball
    always @(posedge slow_clk) begin
        if (rst) begin
            red_ball1_vx_wc  <= 32'd0;
            red_ball1_vy_wc  <= 32'd0;
            red_ball1_x_wc   <= 32'd1245540516;
            red_ball1_y_wc   <= 32'd535439256;
        end
        else begin
            red_ball1_x_wc  <= rb_x_ac;
            red_ball1_y_wc  <= rb_y_ac;
            red_ball1_vx_wc <= rb_vx_ac;
            red_ball1_vy_wc <= rb_vy_ac;
        end
    end    
    
    
    // ----------------------------- Postprocessing for rendering ---------------------------------
    wire [10:0] cue_ball_x_sc, cue_ball_y_sc, red_ball1_x_sc, red_ball1_y_sc;
    wc_to_sc #(WIDTH) inst_wc_to_sc_cue_ball(cue_ball_x_wc, cue_ball_y_wc, 11'd749, cue_ball_x_sc, cue_ball_y_sc);
    wc_to_sc #(WIDTH) inst_wc_to_sc_red_ball(red_ball1_x_wc, red_ball1_y_wc, 11'd749, red_ball1_x_sc, red_ball1_y_sc);

    always @(posedge clk) begin
          cue_ball_x_reg <= cue_ball_x_sc;
          cue_ball_y_reg <= 11'd749 - cue_ball_y_sc; //flip the y axis back
          
          red_ball1_x_reg <= red_ball1_x_sc;
          red_ball1_y_reg <= 11'd749 - red_ball1_y_sc; //flip the y axis
    end
    
    assign      {  cue_ball_x,  cue_ball_y } = {  cue_ball_x_reg[10:0],  cue_ball_y_reg[9:0] };
    assign      { red_ball1_x, red_ball1_y } = { red_ball1_x_reg[10:0], red_ball1_y_reg[9:0] };
    assign { cue_ball_disp, red_ball1_disp } = { cb_disp, rb_disp };
    
    
endmodule
