module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire c_in, input wire [2:0] Op);
  wire [3:0] AMod, BMod, result_sum, result_ul;

  preprocess preprocesador (AMod, BMod, A, B, Op);
  sum4_fa sumador (result_sum, carry, AMod, BMod, c_in);
  ul4 unidad_logica (result_ul, AMod, BMod, Op[1:0]);
  mux2_4 multiplexor (R, result_sum, result_ul, Op[2]);

  assign sign = R[3];
  assign zero = (R == 4'b0000) ? 1'b1 : 1'b0;
endmodule