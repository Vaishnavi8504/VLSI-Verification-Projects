module d_latch_tb();
reg enb_tb,rst_tb,d_tb;
wire q_tb,qbar_tb;
d_latch dut (enb_tb,rst_tb,d_tb,q_tb,qbar_tb);
initial 
begin
enb_tb=0;
rst_tb=0;
d_tb=0;
end
always #5  enb_tb=~enb_tb;
initial 
begin 
rst_tb=1;
#15;
rst_tb=0;
#10
d_tb=1;
#10;
d_tb=0;
end


