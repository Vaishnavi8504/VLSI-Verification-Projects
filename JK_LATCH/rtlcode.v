module jk_latch(input enb ,rst,j,k,output reg q ,qbar );
 always @(*)
 begin
 if (enb)
  if(rst)
   begin
     q<='b0;
     qbar<='b1; 
   end
   else if (j==0&&k==0)
     begin
       q<=q;
       qbar<=~q;
     end
   else if(j==0 && k==1)
     begin
       q<='b0;
       qbar<='b1;
      end
    else if(j==1 && k==0)
     begin
     q<='b1;
     qbar<='b0;
     end
    else if (j==1 && k==1)
    begin
    q<=~q;
    qbar<=q;
    end
 end
