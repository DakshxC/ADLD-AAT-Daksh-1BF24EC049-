module tb_ring_counter;
  reg clk, rst; wire [3:0] q;
  ring_counter uut(clk, rst, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("ring_counter.vcd"); $dumpvars(0, tb_ring_counter);
    clk=0; rst=1; #10 rst=0; #50 $finish;
  end
endmodule