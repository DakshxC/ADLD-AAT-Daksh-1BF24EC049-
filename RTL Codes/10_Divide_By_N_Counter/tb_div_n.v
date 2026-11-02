module tb_div_n;
  reg clk, rst; wire out_clk;
  div_n uut(clk, rst, out_clk);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("div_n.vcd"); $dumpvars(0, tb_div_n);
    clk=0; rst=1; #10 rst=0; #100 $finish;
  end
endmodule