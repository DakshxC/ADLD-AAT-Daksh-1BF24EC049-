module parity(input [3:0] in, output even_p, odd_p);
  assign even_p = ^in;
  assign odd_p = ~even_p;
endmodule