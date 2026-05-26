module pipo_tb();
reg clk_tb,rst_tb,load_tb;
reg [3:0]pin_tb;
wire [3:0] pout_tb;
pipo_register  dut( clk_tb,rst_tb,load_tb,pin_tb,pout_tb);
initial
begin
{clk_tb,rst_tb,load_tb,pin_tb}=0;
end
always #5 clk_tb=~clk_tb;
initial
begin
rst_tb=1;
#10;
rst_tb=0;
#10;
pin_tb=4'b1110;
load_tb=1'b1;
#30;
load_tb=1'b0;
end

endmodule
