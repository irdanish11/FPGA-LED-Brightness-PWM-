
//Test Bench.

module tb_top_pwm_ScRomPc();

reg tb_push_btn, tb_tp_clk, tb_tp_rst;
wire tb_pwm_gen;

top_pwm_ScRomPc m_tb_Top(.pwm_gen(tb_pwm_gen), .push_btn(tb_push_btn), .tp_clk(tb_tp_clk), .tp_rst(tb_tp_rst));

always #10 tb_tp_clk=~tb_tp_clk;

initial
begin
	tb_tp_clk=1'b0; tb_push_btn=1'b1;
#5	tb_tp_rst=1'b1;
#5	tb_tp_rst=1'b0;	
#5	tb_tp_rst=1'b1;




//Reset At 25
#1000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;




//Reset At 50
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 50
#20	tb_tp_rst=1'b1;



//Reset At 75
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000	tb_tp_rst=1'b0;	//Reset At 75
#20	tb_tp_rst=1'b1;

//Reset At 75
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000	tb_tp_rst=1'b0;	//Reset At 75
#20	tb_tp_rst=1'b1;


//Reset At 75
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000	tb_tp_rst=1'b0;	//Reset At 75
#20	tb_tp_rst=1'b1;


//Reset At 100
#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000	tb_tp_rst=1'b0;	//Reset At 100
#20	tb_tp_rst=1'b1;


//No Reset
#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;




//Reset At 25
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;

//Reset At 25
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;

//Reset At 25
#10000000 tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;

//Reset At 25
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;

//Reset At 25
#10000000	tb_push_btn=1'b0; 
#20	tb_push_btn=1'b1;


#10000000	tb_tp_rst=1'b0;	//Reset At 25
#20	tb_tp_rst=1'b1;


//No Reset
#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;


#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;

#10000000 tb_push_btn=1'b0; 
#20	    tb_push_btn=1'b1;




#1000000000$stop;
end

endmodule