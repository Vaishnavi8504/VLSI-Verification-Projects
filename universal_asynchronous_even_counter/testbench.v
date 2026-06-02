
module universal_counter_tb();
reg clk,rst,enb;
reg [1:0]mode;
wire mod_2counter;
wire [1:0] mod_4counter;
wire[2:0] mod_8counter;
wire [3:0] mod_16counter;
universal_counter dut (clk,rst,enb,mode,mod_2counter,mod_4counter,mod_8counter,mod_16counter);
initial 
begin
{clk,rst,enb,mode}=0;
end
always #5 clk=~clk;
initial 
begin
rst=1;
#10;
rst=0;
#10;
enb=1;
mode=2'b00;
#70;
enb=0;
rst=1;
#10;
rst=0;
#10;
enb=1;
mode=2'b01;
#70;
enb=0;
rst=1;
#10;
rst=0;
#10;
enb=1;
mode=2'b10;
#70;
enb=0;
rst=1;
#10;
rst=0;
#10;
enb=1;
mode=2'b11;
#180;
enb=0;
end
endmodule
