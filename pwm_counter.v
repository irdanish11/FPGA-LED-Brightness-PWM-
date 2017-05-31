
module pwm_counter(pwm, strt, clk, rst_n, n_rom);

input strt;//Button input.
input clk, rst_n;
input [15:0]n_rom;//16 bit input from ROM which sets the time of counter

output pwm;
reg pwm;//PWM Output.

reg [15:0] count_out;

localparam total=16'd50000;

reg en;
wire din;

assign din=(~strt)? 1'b1 : en;

always@(posedge clk, negedge rst_n)
begin
if(~rst_n)
en <= 1'd0;
else
en <= din;
end


//First Counter.
always@(posedge clk, negedge rst_n)
begin

if(~rst_n ) //1st IF.
begin
	count_out<=16'd0;
	pwm<=1'b0;
end

else
begin
	if(en)//2nd IF
	begin
		count_out<=count_out+1'd1;
		if(count_out<=total)//3rd IF
		begin
			if(count_out<n_rom)
			begin
				pwm<=1'b1;
			end
	
			else if(count_out>n_rom)
			begin
				pwm<=1'b0;
			end
	
			else
			begin
				pwm<=pwm;
			end
		end //End of 3rd IF.
		
		else	
		begin
			count_out<=16'd0;
		end
	
	end//end of if(en)

	else
	begin
		count_out<=16'd0;
	end
end//End of outer else
end//End of Always Block.

endmodule