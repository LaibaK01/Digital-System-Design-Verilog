/// Problem 6: Vector Concatenation

module vector_concatenation(
  input wire [4:0] a, b, c, d, e, f,
  output wire [7:0] out1, out2, out3, out4
);
  // Approach: Concatenate multiple 5-bit inputs and split into 8-bit groups.
  // Steps:
  // 1. Declare input and output ports.
  // 2. Concatenate six 5-bit inputs with a 2-bit constant to form a 32-bit signal.
  // 3. Extract four 8-bit segments.
endmodule
