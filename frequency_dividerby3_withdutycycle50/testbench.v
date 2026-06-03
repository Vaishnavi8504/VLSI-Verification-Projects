
module freq_divby3_dc50_tb();
reg clk,rst,enb;
wire [1:0] count;
wire  enb1,enb2,f_3;
 freq_divby3_dc50 dut (clk,rst,enb,count,enb1,enb2,f_3);
 initial 
 begin
 {clk,rst,enb}=0;
 end
 always #5 clk=~clk;
 initial 
 begin
 rst=1'b1;
 #10;
 rst=1'b0;
 #10;
 enb=1'b1;
 #300;
 enb=1'b0;
end 
endmodule
