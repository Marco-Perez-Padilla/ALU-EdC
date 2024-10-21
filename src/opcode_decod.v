module opcode_decod (input wire [2:0] Opcode, output wire Add1, op12, cp1);
  wire result1, result2, result3, result4, result5;

  assign Add1 = Opcode[0];

  not not1 (result1, Opcode[0]);
  and and1 (result2, result1, Opcode[1]);
  or or1 (op12, result2, Opcode[2]);

  not not2 (result3, Opcode[1]);
  not not3 (result4, Opcode[2]);
  and and2 (result5, result4, result3);
  and and3 (cp1, result5, Opcode[0]);
endmodule

