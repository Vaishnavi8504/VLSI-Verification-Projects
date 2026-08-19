module jk_flipflop_tb();
reg clk,rst;
wire j,k,q;
wire next_q;
  reg [2:0] count;
  assign j=count[2];//assigning the most significant bit to j 
  assign k=count[1];//by using this assign statement i am making 
  assign q=count[0];// the characteristic of jk flip flop
jk_flipflop dut(clk,rst,j,k,q,next_q);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, jk_flipflop_tb);
end
initial begin 
count=3'b000;
  clk=0;
end
  always #5 clk=~clk;
initial 
begin
rst=1; 
  @(posedge clk);
  #1;
rst=0;
  for (int i=0;i<8;i++)
    begin
  count=i;
      @(posedge clk);// use different posedge for display so that the next_q should be evaluted after the changes in value of j ,k,q 
  #1;
     
 $display("the value of next_q=%0b  at value of j=%0b k=%0b q=%0b",next_q,count[2],count[1],count[0]);
  
 end
  $finish;
end

endmodule
