module logic_cell(output wire out, input wire a, b, input wire [1:0] S);
  wire result1, result2, result3, result4;
  and and1(result1, a, b);
  or or1(result2, a, b);
  xor xor1(result3, a, b);
  not not1(result4, a);
  mux4_1 mux4_11(out, result1, result2, result3, result4, S);
endmodule