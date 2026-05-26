module sipo_tb(   );
reg clk_tb,rst_tb,enb_tb,sin_tb;
wire [3:0]pout_tb;
sipo_register dut(clk_tb,rst_tb,enb_tb,sin_tb,pout_tb);
initial
begin 
{clk_tb,rst_tb,enb_tb,sin_tb}=0;
end
always #5 clk_tb=~clk_tb ;
 initial
 begin
 rst_tb=1;
 #10;
 rst_tb=0;
 enb_tb=0;
 sin_tb='b1;
 #10;
 sin_tb='b1;
 #10;
 sin_tb='b0;
 #10;
 sin_tb='b0;
 #10;
 enb_tb=1;
 end
endmodule
