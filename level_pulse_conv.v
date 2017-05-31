module lev_puls_conv(clk, rst_n, level_in, pulse_out);
// This module performs level to pulse convertor
input clk, rst_n, level_in;
output pulse_out;

reg [1:0] c_state, n_state;

localparam high =2'b00;
localparam pulse=2'b01;
localparam low  =2'b10;

always@(posedge clk or negedge rst_n)
begin
if(~rst_n)
c_state <= 2'd0;
else
c_state <= n_state;
end

always@(*)
begin
n_state= c_state;
case(c_state)
high:
begin
if(~level_in)
n_state=pulse;
else
n_state= c_state;
end
pulse:
begin
if(level_in)
n_state=high;
else
n_state=low;
end
low:
begin
if(level_in)
n_state=high;
else
n_state=c_state;
end
default: n_state=high;
endcase
end

assign pulse_out= (c_state==pulse)? 1'd0:1'd1;
endmodule