module rc_tb ();
  //step1 
  reg [3:0] a_tb;
  reg [3:0] b_tb;
  reg cin_tb;
  wire [3:0] sum_tb;
  wire carry_tb;
  //step2
  ripple_carry_adder4bit dut (a_tb,b_tb,cin_tb,sum_tb,carry_tb);
  //step3
  initial 
    begin 
      $monitor("sum is %b,carry is %b ",sum_tb ,carry_tb );
      a_tb=0;
      b_tb=0;
      cin_tb=0;
    end
  //step4
  initial
    begin
      #10;
      a_tb=4'b0110;
      b_tb=4'b1110;
      cin_tb=1;
      #10;
      $finish 
    end 
endmodule 


















