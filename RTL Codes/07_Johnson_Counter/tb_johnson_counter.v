module tb_johnson_counter;
  reg clk, rst; wire [3:0] q;
  johnson_counter uut(clk, rst, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("johnson_counter.vcd"); $dumpvars(0, tb_johnson_counter);
    clk=0; rst=1; #10 rst=0; #80 $finish;
  end
endmodule