module full_adder(input a_fa,b_fa,cin_fa, output  reg sum_fa, output reg carry_fa);
always @(*)
begin 
sum_fa = a_fa^b_fa^cin_fa;
carry_fa =( a_fa & b_fa)|(b_fa & cin_fa)|(cin_fa & a_fa);
end
endmodule//code for full adder


module ripple_carry_adder4bit(
input [3:0]a_rc, input [3:0]b_rc,input cin ,output [3:0]sum_rc,output carry_rc);
wire w1,w2,w3;
full_adder fa1(a_rc[0],b_rc[0],cin,sum_rc[0],w1);
full_adder fa2(a_rc[1],b_rc[1],w1,sum_rc[1],w2);
full_adder fa3(a_rc[2],b_rc[2],w2,sum_rc[2],w3);
full_adder fa4(a_rc[3],b_rc[3],w3,sum_rc[3],carry_rc);


endmodule//code for ripple carry adder
