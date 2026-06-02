module universal_freq_divider( input clk,rst,enb ,input [1:0]mode,output reg f_out );
reg [3:0] count ;
always @(posedge clk)
begin
if (rst)
count<=0;
else if (enb)
count<=count+1'b1;
else 
count<=count;
case (mode)
2'b00: f_out =count[0];
2'b01: f_out =count[1];
2'b10:f_out =count[2];
2'b11:f_out =count[3];
endcase 
end
endmodule
