module freq_divby5_dc50_tb( );
    reg clk,rst,enb;
wire [2:0] count;
wire  enb1,enb2,f_5;
 freq_divby5_dc50 dut (clk,rst,enb,count,enb1,enb2,f_5);
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
 enb=1'b1;
 #700;
 enb=1'b0;
end 
endmodule
