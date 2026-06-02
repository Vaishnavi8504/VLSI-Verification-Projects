module mod_3counter(input clk,rst,enb,output reg [1:0] count);
always @(posedge clk)
begin
if (rst)
count<=0;
else if(count<2 && enb==1'b1)
count<=count+1'b1;
else if(count==2&& enb==1'b1)
count<=0;
else if (enb==1'b1)
count<=count;
end

endmodule
