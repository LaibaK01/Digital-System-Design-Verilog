
// Testbench for Problem 6
module tb_vector_concatenation();
  reg [4:0] a, b, c, d, e, f;
  wire [7:0] out1, out2, out3, out4;

  vector_concatenation uut(
    .a(a), 
    .b(b), 
    .c(c), 
    .d(d), 
    .e(e), 
    .f(f), 
    .out1(out1), 
    .out2(out2), 
    .out3(out3), 
    .out4(out4)
  );

  initial begin
    // Test case: Provide different sets of 5-bit inputs and verify concatenation
  end

  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end

endmodule


