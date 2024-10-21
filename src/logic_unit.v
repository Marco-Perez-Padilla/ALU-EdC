module ul4(output wire[3:0] Out, input wire[3:0] A, input wire[3:0] B, input wire [1:0] S);
  logic_cell log_cell1 (Out[0], A[0], B[0], S);
  logic_cell log_cell2 (Out[1], A[1], B[1], S);
  logic_cell log_cell3 (Out[2], A[2], B[2], S);
  logic_cell log_cell4 (Out[3], A[3], B[3], S);
endmodule