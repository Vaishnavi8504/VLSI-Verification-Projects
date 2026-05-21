module bcd_adder(input [3:0] a_bcd,input [3:0] b_bcd, input cin, output [3:0]sum_bcd,output carry_bcd);
reg [4:0] temp;
always@(*)
begin
temp = a_bcd+b_bcd+cin;
if (temp>'d9)
temp= temp+4'b0110;
else 
temp =temp ;
end
assign sum_bcd=temp[3:0];
assign carr_bcd=temp[4];

endmodule

