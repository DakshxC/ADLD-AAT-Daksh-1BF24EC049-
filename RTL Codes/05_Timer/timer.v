module timer(input clk, rst, output reg [3:0] val);
  always @(posedge clk) if(rst) val <= 0; else val <= val + 1;
endmodule