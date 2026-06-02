
module mod_3counter_tb( );
reg clk,rst,enb;
wire [1:0] count;
mod_3counter dut (clk,rst,enb,count);
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
