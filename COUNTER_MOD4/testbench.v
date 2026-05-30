module counter_mod4_tb();
reg clk_tb,rst_tb,enb_tb;
wire [1:0] count_tb;
counter_mod4 dut (clk_tb,rst_tb,enb_tb,count_tb);
initial 
begin 
{clk_tb,rst_tb,enb_tb}=0;
end
always #5 clk_tb = ~clk_tb;
initial 
begin 
rst_tb=1;
#10;
rst_tb=0;
enb_tb=1;
#50;
enb_tb=0;
end

endmodule
