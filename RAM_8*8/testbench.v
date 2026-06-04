
module RAM8_8_tb( );
reg clk,rst,w_enb,rd_enb;
reg [3:0] w_addr;
reg [7:0] data_in;
reg [3:0] rd_addr;
wire [7:0] data_out;
  RAM8_8 dut (clk,rst,w_enb,rd_enb,w_addr,data_in,rd_addr,data_out);
  initial 
  begin 
     {clk,rst,w_enb,w_addr,rd_enb,data_in,rd_addr}=0;
  end
  always #5 clk=~clk;
  initial 
    begin
    rst=1;
    #10;
    rst=0;
    w_enb=1'b1;
    w_addr=3'b101;
    data_in=5;
    #10;
     w_enb=1'b1;
    w_addr=3'b100;
    data_in=10;
    #10;
    w_enb=0;
    rd_addr=3'b101;
    #10;
    rd_addr=3'b100;
    #100;
    $finish;
    end
 
endmodule
