module tb_shift_reg;
  reg clk, rst, sin; wire [3:0] q;
  shift_reg uut(clk, rst, sin, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("shift_reg.vcd"); $dumpvars(0, tb_shift_reg);
    clk=0; rst=1; sin=1; #10 rst=0; #10 sin=0; #10 sin=1; #40 $finish;
  end
endmodule