module demux_2to1_tb();
//step1
reg s_tb,i_tb;
wire [1:0]y_tb;
integer m;
//step 2
demux_1to2 dut (s_tb,i_tb,y_tb);
//step3
initial 
begin 
s_tb=0;
i_tb=0;
#1;
end
initial 
begin
$monitor ("the value of y is %b ",y);
for (m=0;m<4;m=m+1)
begin
#10;
i_tb=m;
s_tb=m;
end
end



endmodule
