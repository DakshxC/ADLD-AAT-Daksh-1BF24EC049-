module tb_timer;
  reg clk, rst; wire [3:0] val;
  timer uut(clk, rst, val);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("timer.vcd"); $dumpvars(0, tb_timer);
    clk=0; rst=1; #10 rst=0; #50 $finish;
  end
endmodule