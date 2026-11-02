module tb_alu;
  reg [3:0] a, b;
  reg [1:0] op;
  wire [3:0] y;
  alu uut(a, b, op, y);
  initial begin
    $dumpfile("alu.vcd"); $dumpvars(0, tb_alu);
    a=4; b=2; op=0; #10 op=1; #10 op=2; #10 op=3; #10 $finish;
  end
endmodule