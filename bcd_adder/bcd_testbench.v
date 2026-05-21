module bcd_tb();
reg [3:0]a_tb;
reg [3:0]b_tb;
reg cin_tb;
wire [3:0] sum_tb;
wire carry_tb;
 bcd_adder dut(a_tb,b_tb,cin_tb,sum_tb,carry_tb);
 initial
 begin
 $monitor ("sum is %b and carry is %b ", sum_tb,carry_tb);
 a_tb=0;
 b_tb=0;
 cin_tb=0;
 end
 initial 
 begin
 #10;
 a_tb=4'b0110;
 b_tb=4'b0010; 
 cin_tb=1'b1;
 #10;

 end 
  


endmodule
