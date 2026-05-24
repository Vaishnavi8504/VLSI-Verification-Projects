module t_latch_tb( );
reg enb_tb,rst_tb,t_tb;
wire q_tb,qbar_tb;
t_latch dut (enb_tb,rst_tb,t_tb,q_tb,qbar_tb);
initial
begin
enb_tb=0;
rst_tb=0;
t_tb=0;
end
always #5 enb_tb=~enb_tb;
initial
begin
rst_tb=1;
#10;
rst_tb=0;
t_tb=0;
#10;
t_tb=1;


end
endmodule
