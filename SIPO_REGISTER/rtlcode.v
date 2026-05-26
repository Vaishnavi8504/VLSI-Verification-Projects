module sipo_register( input clk,rst,enb,s_in,output reg [3:0] p_out);
reg [3:0] temp;
always @(posedge clk)
begin
if (rst)
temp<=4'b0000;
else if (enb==0)
begin
temp<=temp>>'b1;
temp[3]<=s_in;
end
else if (enb==1)
begin
p_out<=temp;
end
end

 endmodule
