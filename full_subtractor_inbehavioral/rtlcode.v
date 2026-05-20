module full_subtractor(input a_fs,b_fs,cin_fs,output reg diff_fs,output reg borrow_fs);
always@(*)
begin 
diff_fs= a_fs^b_fs^cin_fs;
borrow_fs=(cin_fs&(~a_fs^b_fs))|~a_fs&b_fs;
end
endmodule
