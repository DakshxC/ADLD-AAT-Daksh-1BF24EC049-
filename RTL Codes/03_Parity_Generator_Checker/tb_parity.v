module tb_parity;
  reg [3:0] in; wire even_p, odd_p;
  parity uut(in, even_p, odd_p);
  initial begin
    $dumpfile("parity.vcd"); $dumpvars(0, tb_parity);
    in=4'b0000; #10 in=4'b1010; #10 in=4'b1110; #10 $finish;
  end
endmodule