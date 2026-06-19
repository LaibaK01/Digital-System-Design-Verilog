module two_bit_comparator (
    input [1:0] A, B,
    output eq, neq
);
    assign eq = (A == B);
    assign neq = (A != B);
  
endmodule

