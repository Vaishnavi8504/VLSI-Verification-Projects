module half_adder(
input a, 
input b,
output sum,
output carry
 );
 wire w1,w2,w3;
 nand (w1,a,b);
 nand(w2,a,w1);
 nand(w3,w1,b);
 nand(carry,w1,w1);
 nand (sum,w2,w3);
endmodule

module full_adder_using_half_adder(input a_fa,b_fa,cin_fa,output sum_fa,carry_fa);
wire w1,w2,w3;
half_adder h1(.a(a_fa),.b(b_fa),.sum(w1),.carry(w2));
half_adder h2(.a(w1),.b(cin_fa),.sum(sum_fa),.carry(w3));
or (carry_fa,w3,w2);
endmodule
