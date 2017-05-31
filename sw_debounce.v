module sm_debounce(clk, rst_n, b_in, cnt, strt, db_out);

// This code performs the FSM for switch debouncing

input clk, rst_n, b_in, cnt;
output strt, db_out;

localparam Idle =3'b000;
localparam Low1 =3'b001;
localparam Low2 =3'b010;
localparam Low3 =3'b011;
localparam High1=3'b100;
localparam High2=3'b101;

reg [2:0] c_state, n_state;
reg db_out, strt;

always@(posedge clk or negedge rst_n)
begin
if(~rst_n)
c_state <= 3'd0;
else
c_state <= n_state;
end

always@(*)
begin
n_state=c_state;
case(c_state)

Idle:
begin
if(~b_in)
n_state=Low1;
else
n_state=c_state;
end

Low1:
begin
n_state=Low2;
end

Low2:
begin
if(~b_in && cnt)
n_state=Low3;
else if(b_in && cnt)
n_state=Idle;
else if(~cnt)
n_state=c_state;
end

Low3:
begin
if(b_in)
n_state=High1;
else
n_state=c_state;
end

High1:
begin
n_state=High2;
end

High2:
begin
if(~b_in && cnt)
n_state=Low3;
else if(b_in && cnt)
n_state=Idle;
else if(~cnt)
n_state=c_state;
end

default: n_state=Idle;
endcase
end

always@(*)
begin
if(c_state==Idle || c_state==Low1 || c_state==Low2)
db_out=1'b1;
else
db_out=1'b0;
end

always@(*)
begin
if(c_state==Low1 || c_state==High1)
strt=1'b1;
else
strt=1'b0;
end
endmodule
