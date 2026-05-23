module decoder_tb();
reg [1:0]i_tb;
wire [3:0]y_tb;
decoder dut (i_tb,y_tb);
initial 
begin
i_tb=0;
end
initial
begin
i_tb=2'b00;
#1;
i_tb=2'b01;
#1;
i_tb=2'b10;
#1;
i_tb=2'b11;
#1;

end

