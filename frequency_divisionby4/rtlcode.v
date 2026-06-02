
module freq_divby4(input clk,rst,enb,output reg[1:0]count ,output f_4);
always @(posedge clk )
begin
if(rst)
count<=0;
else if(enb)
count<=count+1'b1;
else 
count<=count;
end 
assign f_4=count[1];


endmodule
