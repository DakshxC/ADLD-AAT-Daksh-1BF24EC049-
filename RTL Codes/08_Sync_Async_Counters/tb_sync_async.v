module tb_sync_async;
  reg clk, async_rst, sync_rst; wire [3:0] q;
  sync_async uut(clk, async_rst, sync_rst, q);
  always #5 clk = ~clk;
  initial begin
    $dumpfile("sync_async.vcd"); $dumpvars(0, tb_sync_async);
    clk=0; async_rst=1; sync_rst=0; #10 async_rst=0; #30 sync_rst=1; #10 sync_rst=0; #30 $finish;
  end
endmodule