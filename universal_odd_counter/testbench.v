module universal_oddcounter_tb( );
reg clk,rst,enb;
reg [1:0]mode;
wire [1:0] mod_3;
wire [2:0]mod_5;
wire [2:0] mod_7;
wire [3:0] mod_9;
 
 universal_oddcounter dut (clk,rst,enb,mode,mod_3,mod_5,mod_7,mod_9);
 initial 
 begin
 {clk,rst,enb,mode}=0;
 end
 always #5 clk=~clk;
 initial 
 begin
 rst=1'b1;
 #10;
 rst=1'b0;
 enb=1'b1;
 #10
 mode =2'b00;
 #100;
 rst = 1;
#10;
rst = 0;
 mode=2'b01;
 #100;
 rst = 1;
#10;
rst = 0;
 mode=2'b10;
 #100;
 rst = 1;
#10;
rst = 0;
 mode=2'b11;
 #100;
 end 
endmodule
