
module freq_divby3_dc50( input clk,rst,enb, output reg [1:0] count ,
output  reg enb1 , output reg enb2, output f_3);
always @(posedge clk )
begin
 if (rst)
 count<=1'b0;
else if (count<2 && enb==1'b1)
count<=count+1'b1;
else if (count==2 && enb ==1'b1)
count<=1'b0;
else if (enb==1'b1)
count<=count ;
end
always @ (posedge clk )
begin
if (rst)
enb1<=1'b0;
else if (count==0)
enb1<=1'b1;
else 
enb1<=1'b0;
end
always @ (negedge clk)
begin
if (rst)
enb2<=1'b0;
else if (count ==0)
enb2<=1'b1;
else 
enb2<=1'b0;
end
 assign f_3=enb1|enb2;

endmodule
