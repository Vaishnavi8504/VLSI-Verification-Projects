`timescale 1ns/1ps

module full_adder_tb;

reg a_fa, b_fa, cin_fa;
wire sum_fa, carry_fa;

full_adder_using_half_adder uut (
    .a_fa(a_fa),
    .b_fa(b_fa),
    .cin_fa(cin_fa),
    .sum_fa(sum_fa),
    .carry_fa(carry_fa)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, full_adder_tb);

    $display("A B Cin | Sum Carry");

    a_fa = 0; b_fa = 0; cin_fa = 0; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 0; b_fa = 0; cin_fa = 1; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 0; b_fa = 1; cin_fa = 0; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 0; b_fa = 1; cin_fa = 1; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 1; b_fa = 0; cin_fa = 0; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 1; b_fa = 0; cin_fa = 1; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 1; b_fa = 1; cin_fa = 0; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    a_fa = 1; b_fa = 1; cin_fa = 1; #10;
    $display("%b %b %b |  %b    %b",
              a_fa,b_fa,cin_fa,sum_fa,carry_fa);

    $finish;

end

endmodule
