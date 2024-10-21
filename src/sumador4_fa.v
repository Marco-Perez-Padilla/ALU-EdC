module sum4_fa(output wire[3:0] S, output wire c_out, input wire[3:0] A, input wire[3:0] B, input wire c_in);
  wire carry1, carry2, carry3;
  sumador sumador1 (carry1, S[0], A[0], B[0], c_in);
  sumador sumador2 (carry2, S[1], A[1], B[1], carry1);
  sumador sumador3 (carry3, S[2], A[2], B[2], carry2);
  sumador sumador4 (c_out, S[3], A[3], B[3], carry3);
endmodule