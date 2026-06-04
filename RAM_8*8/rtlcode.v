module RAM8_8( input clk,rst,w_enb,r_enb,
input [3:0] w_addr,
input [7:0] data_in,
input [3:0] rd_addr,
output  reg [7:0] data_out );
//creating one internal memory 
reg [7:0] mem [7:0];
integer i;
//rest logic , write and read logic 
always @ (posedge clk or rst)
 begin
   if (rst )
    begin
    for (i=0;i<7;i=i+1)
     mem[i]<= 0;
    end 
    else if (w_enb)
       mem[w_addr]<= data_in;
    else if (w_enb==0)
      data_out<=mem[rd_addr];
   
 end 

endmodule
