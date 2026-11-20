module tb ;
  reg clk,rst;
  reg  [3:0]d_in;
  wire [3:0]q_out;
  
  ring_counter dut5(clk,rst,d_in,q_out);
  initial begin 
    $dumpfile("file.vcd");
    $dumpvars(0,tb);
  end 
  initial begin 
    clk=0;
    rst=0;
    d_in=4'b0000;
  end 
  always #5 clk=~clk;
  initial begin 
    rst=1'b1;
    #10;
    rst=1'b0;
    d_in=4'b0001;
    #10;
    d_in=4'b0000;
    $monitor("the value of q_out at time %t is %b",$time, q_out);
    #60;
    $finish;
    
  end 
endmodule 
  
