module half_subtractor_tb();
  reg a_tb,b_tb;
  wire diff_tb,borrow_tb;
  half_subtractor dut (a_tb,b_tb,diff_tb,borrow_tb);
  initial
    begin 
    a_tb=0;
    b_tb=0;
  end
  initial
    begin 
      $monitor("a_tb=%b,b_tb=%b,diff_tb=%b,borrow_tb=%b",a_tb,b_tb,diff_tb,borrow_tb);
      a_tb=0;b_tb=0;#10;
      a_tb=1;b_tb=0;#10;
      a_tb=0;b_tb=1;#10;
      a_tb=1;b_tb=1;#10;
      $finish ;
    end
endmodule
  
  
