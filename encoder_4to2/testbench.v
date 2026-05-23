module encoder_tb( );
reg [3:0]i_tb;
wire [1:0]y_tb;
encoder dut(i_tb,y_tb);
initial 
begin
i_tb=0;
end
initial 
begin
i_tb=4'b0001;
#1;
i_tb=4'b0010;
#1;
i_tb=4'b0100;
#1
i_tb=4'b1000;
end


endmodule
