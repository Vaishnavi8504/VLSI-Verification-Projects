module mux_4_1_tb();
//step1
reg [3:0] i_tb;
reg[1:0] s_tb;
wire y;
integer m;
//step2
mux_4_1 dut(i_tb,s_tb,y);
//step3
initial 
begin
i_tb=0;
s_tb=0;
end
//step4
initial
begin
$monitor ("the value of y is %b ",y);
for(m=0;m<16;m=m+1)
begin
#10;
i_tb=m;
s_tb=m;
end
$finish;
end
endmodule
