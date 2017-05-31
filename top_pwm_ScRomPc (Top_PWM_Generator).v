
module top_pwm_ScRomPc(pwm_gen, push_btn, tp_clk, tp_rst);

input push_btn, tp_clk, tp_rst;
output pwm_gen;

wire [2:0]w_sel_dec; //Connects "sel" & "sel_dec".
selection_counter m_sc1(.sel(w_sel_dec), .clk(tp_clk), .rst_n(tp_rst), .pb_in(push_btn));
wire [15:0]w_nOut; //Connects "n_out" & "n_rom".
rom_n m_rom2(.n_out(w_nOut), .sel_dec(w_sel_dec));

pwm_counter m_pc3(.pwm(pwm_gen), .strt(push_btn), .clk(tp_clk), .rst_n(tp_rst), .n_rom(w_nOut));

endmodule

