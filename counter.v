module counter_20ms (strt, clk, rst_n, cnt_p);
//This module performs 20ms delay counter for switch debouncing state machine
input strt, clk, rst_n;
output cnt_p;

localparam N=19;
reg [N:0] count;
reg en;
wire din;

assign din=(strt)? 1'b1 : en;
assign cnt_p=(&count)? 1'b1:1'b0;

always@(posedge clk, negedge rst_n)
begin
if(~rst_n || cnt_p)
en <= 1'd0;
else
en <= din;
end

always@(posedge clk, negedge rst_n)
begin
if(~rst_n)
count=20'd0;
else
begin
if(en)
count=count+1'd1;
else
count=20'd0;
end
end

endmodule