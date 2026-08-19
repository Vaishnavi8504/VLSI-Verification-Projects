module sr_flipflop_tb();
  reg clk,rst;
  wire s,r,q;
  wire next_q,next_qbar;
  reg [2:0] count;
  sr_flipflop dut(clk,rst,s,r,q,next_q,next_qbar);
   
  assign s=count[2];
  assign r=count[1];
  assign q=count[0]; 
   
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, sr_flipflop_tb);
end
  initial begin
    clk=0;
    count=3'b000;
  end
  always #5 clk=~clk;
  initial begin
    rst=1;
    #10; 
    @(posedge clk);
    #1;
    rst=0;
    
    for (int i=0;i<8;i++)
    begin 
      count =i;
      
      @(posedge clk);
      #1;
      $display ("the value of next_q is=%0b at s=%0b r=%0b q=%0b ", next_q,count[2],count[1],count[0]);
      @(posedge clk);
      #1;
      $display("the value of next_qbar=%0b ",next_qbar);
     end 
    $finish;
  end 
endmodule
  
