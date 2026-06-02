module universal_oddcounter(
input clk,rst,enb,
input [1:0] mode,
output reg [1:0] mod_3,
output reg [2:0] mod_5,
output reg [2:0] mod_7,
output reg[3:0] mod_9
 );
 reg [3:0] internal_counter;
 always @(posedge clk)
 begin
 if(rst)
 begin
 internal_counter<=0;
 mod_3<=0;
  mod_5 <= 0;
   mod_7 <= 0;
   mod_9 <= 0;
   end
 else 
 begin
 case(mode)
 2'b00:
 begin
 if (internal_counter<2 &&enb==1)
 internal_counter<=internal_counter+1'b1;
 else if (internal_counter ==2 && enb==1)
 internal_counter<=0;
 else 
 internal_counter <=internal_counter;
 
 mod_3<=internal_counter;
 end
 2'b01:
 begin
if (internal_counter<4 &&enb==1)
 internal_counter<=internal_counter+1'b1;
 else if (internal_counter ==4 && enb==1)
 internal_counter<=0;
 else 
 internal_counter <=internal_counter;
 
 mod_5<=internal_counter;
 end
 2'b10:
 begin
 if (internal_counter<6 &&enb==1)
 internal_counter<=internal_counter+1'b1;
 else if (internal_counter ==6&& enb==1)
 internal_counter<=0;
 else 
 internal_counter <=internal_counter;
 
 mod_7<=internal_counter;
 end
  2'b11:
 begin
 if (internal_counter<8 &&enb==1)
 internal_counter<=internal_counter+1'b1;
 else if (internal_counter ==8&& enb==1)
 internal_counter<=0;
 else 
 internal_counter <=internal_counter;
 
 mod_9<=internal_counter;
 end
 
 default:
begin
   mod_3 <= 0;
   mod_5 <= 0;
   mod_7 <= 0;
   mod_9 <= 0;
end
 endcase
 end
 end
endmodule
