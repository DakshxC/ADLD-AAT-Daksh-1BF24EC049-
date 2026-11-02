module lfsr(input clk, rst, output reg [3:0] q);
  always @(posedge clk) if(rst) q <= 4'b0001; else q <= {q[2:0], q[3] ^ q[2]};
endmodule