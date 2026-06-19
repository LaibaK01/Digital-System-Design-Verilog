// Testbench for Problem 4
module tb_bitwise_operations();
  reg [2:0] a, b;
  wire [2:0] bitwise_or;
  wire logical_or;
  wire [2:0] bitwise_not_a, bitwise_not_b;

  bitwise_operations uut(
    .a(a), 
    .b(b), 
    .bitwise_or(bitwise_or), 
    .logical_or(logical_or), 
    .bitwise_not_a(bitwise_not_a), 
    .bitwise_not_b(bitwise_not_b)
  );

  initial begin
    // Test case: Apply different bit patterns and observe results
  end

  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule


