module siiso_register(input clk,rst,enb, s_in,output reg s_out);
reg [3:0] temp;
always @(posedge clk)
begin
if (rst)
 temp<=4'b0000;
 
 else if (enb)
 begin
 temp<=temp>>'b1;
 temp[3]<=s_in;
 s_out<=temp[0];
 end
 
end
endmodule
