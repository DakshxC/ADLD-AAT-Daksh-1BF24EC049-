module tb_barrel_shifter;
  reg [3:0] in; reg [1:0] shamt; wire [3:0] out;
  barrel_shifter uut(in, shamt, out);
  initial begin
    $dumpfile("barrel_shifter.vcd"); $dumpvars(0, tb_barrel_shifter);
    in=4'b0001; shamt=0; #10 shamt=1; #10 shamt=2; #10 shamt=3; #10 $finish;
  end
endmodule