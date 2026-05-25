module jk_latch_tb();
reg enb_tb,rst_tb,j_tb,k_tb;
wire q_tb,qbar_tb;
integer i;
jk_latch dut (enb_tb,rst_tb,j_tb,k_tb,q_tb,qbar_tb);
initial
begin
enb_tb=0;
rst_tb=0;
j_tb=0;
k_tb=0;
end
always #5 enb_tb=~enb_tb;
initial 
begin 
rst_tb=1;
#10;
rst_tb=0;
#10;
for (i=0;i<4;i=i+1)
begin
{j_tb,k_tb}=i;
#20;

end
end
endmodule
