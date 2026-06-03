module freq_divby3( input clk,rst,enb,output reg [1:0] count,output f_3);
always @(posedge clk)
begin
if(rst)
count<=0;
else if (count<2 && enb==1'b1)
count<=count+1'b1;
else if (count==2 && enb==1'b1)
count<=0;
else if (enb==1'b1) 
count<=count;
end
assign f_3=count[1];
endmodule
