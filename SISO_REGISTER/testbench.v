module siso_tb( );
reg clk_tb,enb_tb,rst_tb,sin_tb;
wire sout_tb;
siiso_register dut(clk_tb,rst_tb,enb_tb,sin_tb,sout_tb);
initial 
begin 
{clk_tb,rst_tb,enb_tb,sin_tb}=0;
end
always #5 clk_tb=~clk_tb;
initial
begin
rst_tb=1;
#10;
rst_tb=0;
enb_tb=0;
#10;
enb_tb=1;
sin_tb='b1;
#10;
sin_tb='b0;
#10;
sin_tb='b1;
#10;
sin_tb='b1;
#50;

end

endmodule
