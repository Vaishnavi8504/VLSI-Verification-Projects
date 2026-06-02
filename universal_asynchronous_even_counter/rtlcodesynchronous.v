//synchronous as same clk is given to all the flip flop
module universal_counter(input clk,rst,enb ,up_downbar , input [1:0]mode,output reg mod_2counter,
output reg [1:0] mod_4counter,
output reg[2:0] mod_8counter,
output reg [3:0]mod_16counter);
reg [3:0] internal_counter;
   //in these code we can design up and down counter also by declaring up_downbar 
   // and for 0 it will down counter and for 1  it will be up counter 
always @(posedge clk)
begin
if(rst)
   internal_counter<=0;
   else if(enb && up_downbar)
  internal_counter<= internal_counter+1'b1;
   else if(enb && up_downbar==0)
  internal_counter<= internal_counter-1'b1;
   
  else 
  internal_counter=internal_counter;
  end
  always @(posedge clk )
  begin 
  case(mode)
  2'b00:
  begin
  if(enb)
  mod_2counter<=internal_counter[0];
  end
  2'b01: begin
  mod_4counter<= internal_counter[1:0];
  end
  2'b10:begin
  mod_8counter<=internal_counter[2:0];
  end
  2'b11:begin
  mod_16counter<=internal_counter[3:0];
  end
  default: begin
  mod_2counter<=0;
  mod_4counter<=0;
  mod_8counter<=0;
  mod_16counter<=0;
  end
  endcase
  end
endmodule
