
module selection_counter(sel, clk, rst_n, pb_in);


output [2:0]sel;
input clk, rst_n, pb_in;
//pb_in is input which is pure input from button.
//pb_in will connect with "p_out" of Top_button module.
reg [2:0] sel;

always@(posedge clk or negedge rst_n)
begin
if (~rst_n)
sel <= 3'b000;
else if(~pb_in)//Tilta removed.
begin
if(sel <3'b100)
sel <= sel+1'b1;
else if(sel == 3'b100)
sel <= 3'b000;
end
else
sel <= sel;
end
endmodule

