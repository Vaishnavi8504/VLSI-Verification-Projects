mux_2_1 dut( i_tb,s_tb,y_tb);
//step 3
initial 
begin
 i_tb=0;
 s_tb=0;
 end
 initial 
 begin
 for (m=0;m<8;m=m+1)
 begin
 $monitor ("the value of y is %b ",y_tb);
 #10;
 i_tb=m;
 s_tb=m;
 end 
  end
endmodule
