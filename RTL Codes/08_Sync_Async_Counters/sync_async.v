module sync_async(input clk, async_rst, sync_rst, output reg [3:0] q);
  always @(posedge clk or posedge async_rst) begin
    if(async_rst) q <= 0;
    else if(sync_rst) q <= 0;
    else q <= q + 1;
  end
endmodule