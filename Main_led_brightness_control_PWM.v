module Main_led_brightness_control_PWM(main_PWM, main_btn_in, main_Clk50Mhz, main_rst);

input main_btn_in, main_Clk50Mhz, main_rst;
output main_PWM;

wire w_clr_push_btn;//It connects "top_button" with "top_pwm_ScRomPc".

top_button md_TB(.btn_in(main_btn_in), .clk(main_Clk50Mhz), .rst_n(main_rst), .p_out(w_clr_push_btn));

top_pwm_ScRomPc md_PGen(.pwm_gen(main_PWM), .push_btn(w_clr_push_btn), .tp_clk(main_Clk50Mhz), .tp_rst(main_rst));

endmodule

