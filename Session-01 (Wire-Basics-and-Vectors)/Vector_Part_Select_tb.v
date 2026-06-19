// Testbench for Problem 3
module tb_vector_part_select();
  reg [31:0] in_vector;
  wire [31:0] out_vector;

  vector_part_select uut(.in_vector(in_vector), .out_vector(out_vector));

  initial begin
    // Test case: Assign different 32-bit values and verify reordering
  end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule
