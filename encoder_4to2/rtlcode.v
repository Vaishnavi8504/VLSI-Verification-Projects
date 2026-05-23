module encoder(input [3:0]i,output reg [1:0]y);

 always @(*)
 begin
// if(i==4'b0001)
// y=2'b00;
// else if (i==4'b0010)
// y=2'b01;
// else if (i==4'b0100)
// y=2'b10;
// else 
// y=2'b11;
case(i)
4'b0001:y=2'b00;
4'b0010:y=2'b01;
4'b0100:y=2'b10;
4'b1000:y=2'b11;
default:y=0;
endcase
end 
endmodule
