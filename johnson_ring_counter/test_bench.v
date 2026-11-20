module tb ;
  reg clk,rst;
  reg  [3:0]d_in;
  wire [3:0]q_out;
  
 johnson_ring_counter dut5(clk,rst,d_in,q_out);
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
    d_in=4'b0000;
    $monitor("the value of q_out at time %t is %b",$time, q_out);
    #60;
    $finish;
    
  end 
endmodule 


/*the value of q_out at time                   10 is 0000
the value of q_out at time                   15 is 1000
the value of q_out at time                   25 is 1100
the value of q_out at time                   35 is 1110
the value of q_out at time                   45 is 1111
the value of q_out at time                   55 is 0111
the value of q_out at time                   65 is 0011
$finish called from file "testbench.sv", line 26.
$finish at simulation time                   70
           V C S   S i m u l a t i o n   R e p o r t 
Time: 70 ns
