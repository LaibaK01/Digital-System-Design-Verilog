// Testbench for Problem 1
module tb_wire_connections();
  reg a, b, c;
  wire w, x, y, z;

  wire_connections uut(
    .a(a), 
    .b(b), 
    .c(c), 
    .w(w), 
    .x(x), 
    .y(y), 
    .z(z)
  );

  initial begin
    // Test case: Apply different input combinations and observe outputs
  end
  
  //For Waveform in EDA
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end

endmodule
