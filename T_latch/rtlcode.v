
module t_latch( input enb,rst,t,output reg q,qbar);
always @(enb)
begin
if (enb)
    if (rst)
    begin
     q<='b0;
     qbar<='b1;
    end
    else if (t==0)
    begin
    q<=q;
    qbar<=~q;
    end
    else if(t==1'b1)
     begin 
       q<=~q;
       qbar<=q;
     end
end
endmodule
