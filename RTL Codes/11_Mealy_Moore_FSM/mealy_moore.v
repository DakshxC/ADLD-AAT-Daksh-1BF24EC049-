module mealy_fsm(input clk, rst, in, output reg out);
  reg state;
  always @(posedge clk) if(rst) begin state<=0; out<=0; end
  else case(state)
    0: begin out<=0; state<=in?1:0; end
    1: begin out<=in?1:0; state<=in?0:1; end
  endcase
endmodule