module tb();
  reg a_tb,b_tb,cin_tb;
  wire sum_tb,carry_tb;
  full_adder dut (a_tb,b_tb,cin_tb,sum_tb,carry_tb);
  initial 
    begin
      a_tb=0;
      b_tb=0;
      cin_tb=0;
    end
  initial
    begin
    $monitor ("a_tb=%b,b_tb=%b,cin_tb=%b,sum_tb= %b,carry_tb=%b",a_tb,b_tb,cin_tb,sum_tb,carry_tb);
     a_tb=1'b1;
      b_tb=1'b1;
      cin_tb=1'b1;
      #1;
      a_tb=1'b0;
      b_tb=1'b0;
      cin_tb=1'b1;
      #1;
       a_tb=1'b1;
      b_tb=1'b1;
      cin_tb=1'b0;
    end 
endmodule 
     
      
