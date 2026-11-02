module tb_mealy_moore;
  reg clk, rst, in; wire out;
  mealy_fsm uut(clk, rst, in, out);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("mealy_moore.vcd"); $dumpvars(0, tb_mealy_moore);
    clk=0; rst=1; in=0; #10 rst=0; in=1; #10 in=1; #10 in=0; #30 $finish;
  end
endmodule