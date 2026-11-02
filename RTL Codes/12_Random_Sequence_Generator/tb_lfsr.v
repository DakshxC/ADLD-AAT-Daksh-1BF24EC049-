module tb_lfsr;
  reg clk, rst; wire [3:0] q;
  lfsr uut(clk, rst, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("lfsr.vcd"); $dumpvars(0, tb_lfsr);
    clk=0; rst=1; #10 rst=0; #100 $finish;
  end
endmodule