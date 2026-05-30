module counter_mod4( input clk,rst,enb,output reg [1:0] count);
 always @(posedge clk)
 begin
  if (rst)
  count<= 'b0;
  else if (enb)
  count<= count+ 1'b1;
  else 
  count<=count;
 end
endmodule
