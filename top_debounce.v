module top_debounce(bounce_in, clk, rst_n, debounce_out);
// This is wrapper for switch debouncing it includes counter for 20ms and FSM for debouncing 

input bounce_in, clk, rst_n;
output debounce_out;

wire cnt_w, strt_w;

sm_debounce SM_de_1(.clk(clk), .rst_n(rst_n), .b_in(bounce_in), .cnt(cnt_w), .strt(strt_w), .db_out(debounce_out));
counter_20ms C20_1(.strt(strt_w), .clk(clk), .rst_n(rst_n), .cnt_p(cnt_w));

endmodule