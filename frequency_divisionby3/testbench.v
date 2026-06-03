module freq_divby3_tb();
reg clk,rst,enb;
wire [1:0] count;
wire f_3;
 freq_divby3 dut (clk,rst,enb,count,f_3);
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
 #100;
 enb=1'b0;
end 
endmodule
