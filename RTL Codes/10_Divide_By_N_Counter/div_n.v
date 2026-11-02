module div_n(input clk, rst, output reg out_clk);
  reg [1:0] count;
  always @(posedge clk) begin
    if(rst) begin count <= 0; out_clk <= 0; end
    else if(count == 2'b01) begin count <= 0; out_clk <= ~out_clk; end
    else count <= count + 1;
  end
endmodule