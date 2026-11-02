module tb_comparator;
  reg [3:0] a, b; wire eq, gt, lt;
  comparator uut(a,b,eq,gt,lt);
  initial begin
    $dumpfile("comparator.vcd"); $dumpvars(0, tb_comparator);
    a=5; b=5; #10 a=6; b=3; #10 a=2; b=7; #10 $finish;
  end
endmodule