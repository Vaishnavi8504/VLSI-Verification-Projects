module s_r_latch( input enb,rst,s,r,output reg q,qbar);
//sr latch using nor gate
always @( posedge enb)
begin
if (enb)
begin
   if (rst)
   begin
   q<='b0;
   qbar<='b1;
   end
   else if(s==0 && r==0)//hold condition
   begin
   q<=q;
   qbar<=qbar;
   end
   else if (s==1 && r==0)//set condition
   begin
   q<='b1;
   qbar<='b0;
   end
   else if(s==0 && r==1)//reset condition
   begin
   q<='b0;
   qbar<='b1;
   end
   else if (s==1 && r==1)//invalid condition
   begin
   q<='bx;
   qbar<='bx;
   end
   
   
end

end
endmodule
