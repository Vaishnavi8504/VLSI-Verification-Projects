
module freq_divby4_tb();
reg clk,rst,enb;
wire [1:0] count;
wire f_4;
freq_divby4 dut (clk,rst,enb,count,f_4);
initial
begin 
{clk,rst,enb}=0;
end
always #5 clk=~clk;
initial
begin
rst=1;
#20;
rst=0;
enb=1;

end
endmodule
