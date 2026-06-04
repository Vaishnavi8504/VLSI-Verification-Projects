module fifo8_8_tb();
reg clk,rst;
reg [7:0] data_in;
wire [7:0] data_out;
wire full, empty;
  top_fifo dut (clk,rst,data_in,data_out);
  
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, fifo8_8_tb);
end
  initial 
  begin 
     {clk,rst,data_in}=0;
  end
  always #5 clk=~clk;
  initial 
    begin
    rst=1;
    #10;
    rst=0;
    data_in=5;
    #10;
     data_in=10;
    #10;
    data_in=5;
    #200;
    $finish;
    end

 
endmodule
