module shift_reg(input clk, rst, sin, output reg [3:0] q);
  always @(posedge clk) if(rst) q <= 0; else q <= {q[2:0], sin};
endmodule