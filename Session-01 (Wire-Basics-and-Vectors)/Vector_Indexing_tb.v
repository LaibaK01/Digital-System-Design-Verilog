// Testbench for Problem 2
module tb_vector_indexing();
  reg [2:0] in_vector;
  wire [2:0] out_vector;
  wire out2, out1, out0;

  vector_indexing uut(
    .in_vector(in_vector), 
    .out_vector(out_vector), 
    .out2(out2), 
    .out1(out1), 
    .out0(out0)
  );

  initial begin
    // Test case: Assign various 3-bit values and check extracted bits
  end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
  
endmodule