module preprocess(output wire [3:0] AMod, output wire [3:0] BMod, input wire [3:0] A, input wire [3:0] B, input wire [2:0] Op);
  wire Add1, op12, cp1;
  wire [3:0] addition1, op2b;

  opcode_decod decod(Op, Add1, op12, cp1);
  mux2_4 mux_add1(addition1, 4'b0000, 4'b0001, Add1);
  mux2_4 mux_op1A(AMod, addition1, A, op12);
  mux2_4 mux_op2B(op2b, A, B, op12);
  compl1 cpl(BMod, op2b, cp1);
endmodule