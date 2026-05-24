module s_r_latch_tb( );
reg enb_tb,rst_tb,s_tb,r_tb;
wire q_tb, qbar_tb;
s_r_latch dut (enb_tb,rst_tb,s_tb,r_tb,q_tb,qbar_tb);
initial
begin
enb_tb=0;
rst_tb=0;
s_tb=0;
r_tb=0;
end
always #5 enb_tb=~enb_tb;
initial
begin
rst_tb=1;
#10;
rst_tb=0;
s_tb=0;//hold condition
r_tb=0; 
#10;
s_tb=1;//set condition
r_tb=0;
#10;
s_tb=0;
r_tb=1;//reset condition
#10;
s_tb=1;//invalid condiiton
r_tb=1;

end



endmodule
