
module rom_n(n_out, sel_dec);

input [2:0]sel_dec;
output [15:0]n_out;
reg [15:0]n_out;
always@(sel_dec)
begin
	case(sel_dec)
	3'b000 : n_out=16'd0;
	3'b001 : n_out=16'd12500;
	3'b010 : n_out=16'd25000;
	3'b011 : n_out=16'd37500;
	3'b100 : n_out=16'd50000;
	default : n_out=16'd0;
	endcase
end

endmodule

