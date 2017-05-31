module synchronizer(async_in, clk, rst_n, sync_out);

//This circuit performs the synchronization of async input with clock

input async_in, clk, rst_n;
output sync_out;

reg sync1, sync2;

always@(posedge clk or negedge rst_n)
begin
if(~rst_n)
begin
sync1<=1'b0;
sync2<=1'b0;
end
else
begin
sync1<=async_in;
sync2<=sync1;
end
end

assign sync_out=sync2;
endmodule