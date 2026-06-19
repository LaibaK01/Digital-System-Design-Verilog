//Latch is Level triggered
module flipflop (
  input clk,
  input en,
  input d_in,
  output reg q_out
);

  always @(posedge clk) begin
    if (en)
      q_out = d_in;
    else
      q_out = 0; // Ensures no latch inference
  end

endmodule


// module inferred_latch (
//   input en,
//   input d,
//   output reg q
// );

//   always @(*) begin
//     if (en)
//       q = d; // No else statement → Latch inferred
//   end

// endmodule

