module d_latch( input enb,rst,d,output reg q,qbar);
always @(enb)
begin
  if (!enb)//active low 
    if (rst)
      begin
       q='b0;
       qbar='b1;
      end 
     else 
       begin
         q=d;
         qbar=~d;
       end
end

endmodule
