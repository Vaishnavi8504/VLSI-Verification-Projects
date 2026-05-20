module half_subtractor( input a_hs,b_hs,output reg diff_hs,output reg borrow_hs );
always @(*)
begin 
diff_hs = a_hs ^ b_hs;
borrow_hs = ~a_hs & b_hs;
end 
endmodule
