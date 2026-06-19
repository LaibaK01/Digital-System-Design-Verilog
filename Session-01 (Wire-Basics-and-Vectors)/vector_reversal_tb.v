// Testbench for Problem 5
module tb_vector_reversal();
  reg [7:0] in_vector;
  wire [7:0] out_vector;

  vector_reversal uut(
    .in_vector(in_vector), 
    .out_vector(out_vector)
  );

  initial begin
    // Test case: Assign an 8-bit value and verify its reversal
  end

  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end

endmodule


