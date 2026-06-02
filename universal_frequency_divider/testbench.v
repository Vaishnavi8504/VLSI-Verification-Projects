
module universal_freqdivider_tb();
reg clk,rst,enb;
reg [1:0]mode;
wire f_out;
 universal_freq_divider dut (clk,rst,enb,mode,f_out);
initial 
begin
{clk,rst,enb,mode}=0;
end
always #5 clk=~clk;
initial 
begin
rst=1;
#10;
rst=0;
#10;
enb=1;
mode=2'b00;
#200;
mode=2'b01;
#200;
mode=2'b10;
#200;
mode=2'b11;

end
endmodule
