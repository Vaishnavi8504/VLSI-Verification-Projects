
module modfifo_b(
input [7:0]data_in,
input clk,rst,
output reg [7:0] data_out,
output reg rd_enb
    );
    parameter idle=2'b00;
    parameter s1=2'b01;
    parameter data_state=2'b10;
     reg [1:0] ps,ns;
     always @(posedge clk )
      begin
       if (rst)
        begin
         ps<=idle;
         end
       else 
       ps<=ns;
      end
       always @(*)
       begin
        ns=ps;
      rd_enb=0;
       data_out=0;
         case(ps)
              idle:begin
              ns=s1;
              rd_enb=0;
              end
              s1: begin
              ns=data_state;
              end 
              data_state: begin
              ns =idle;
              rd_enb=1'b1;
              data_out=data_in;
              end
              default:
begin
    ns = idle;
    rd_enb = 0;
    data_out = 0;
end
             endcase
         end 
         
              
    
endmodule
