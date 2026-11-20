module ring_counter(input clk,rst,input [3:0]d_in,output [3:0]q_out);
  wire d0;
  assign d0=d_in[0]?d_in:q_out[0];
  d_ff dut1(clk,rst,d0,q_out[3]);
  d_ff dut2(clk,rst,q_out[3],q_out[2]);
  d_ff dut3(clk,rst,q_out[2],q_out[1]);
  d_ff dut4(clk,rst,q_out[1],q_out[0]);
  
endmodule
module d_ff(input clk,rst,d,output reg q);
  always @(posedge clk or posedge rst )begin
    if(rst)
      q<=1'b0;
  else 
    q<=d;
  end
endmodule
