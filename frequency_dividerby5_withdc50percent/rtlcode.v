
module freq_divby5_dc50( input clk,rst,enb ,
output reg[2:0] count,
output  reg enb1,
output reg enb2,
output f_5);
always @(posedge clk)
begin
if(rst)
count<=0;
else if (count<4 && enb==1'b1)
count<=count+1'b1;
else if ( count ==4 &&enb==1'b1)
count<=0;
else 
count<=count;
end
always @ (posedge clk )
begin
if (rst)
enb1<=1'b0;
else if (count==0 || count ==1)
enb1<=1'b1;
else 
enb1<=1'b0;
end
always @ (negedge clk)
begin
if (rst)
enb2<=1'b0;
else if (count ==0 || count ==1)
enb2<=1'b1;
else 
enb2<=1'b0;
end
 assign f_5=enb1|enb2;
endmodule
