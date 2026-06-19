`timescale 1ns/1ps

module tb_moore_sequence_detector_1010();

  // Inputs
  reg clk;
  reg rst;
  reg x;

  // Output
  wire z;

  // Instantiate the Unit Under Test (UUT)
  moore_sequence_detector_1010 uut (
    .clk(clk),
    .rst(rst), 
    .x(x),
    .z(z)
  );

  // Clock generation (100 MHz)
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  // Stimulus
  initial begin
    // Initialize Inputs
    rst = 1;
    x = 0;

    // Apply reset
    #20 rst = 0;

    // Test case 1: Simple 1010 pattern
    $display("Test 1: 1010 sequence");
    #10 x = 1; // 1
    #10 x = 0; // 0
    #10 x = 1; // 1
    #10 x = 0; // 0 - should detect
    #20;

    // Test case 2: Incomplete pattern
    $display("Test 2: 1011 sequence (no detection)");
    #10 x = 1; // 1
    #10 x = 0; // 0
    #10 x = 1; // 1
    #10 x = 1; // 1 - should not detect
    #20;

    // Test case 3: Multiple patterns with noise
    $display("Test 3: 110101010 with multiple detections");
    #10 x = 1; // 1
    #10 x = 1; // 1
    #10 x = 0; // 0
    #10 x = 1; // 1
    #10 x = 0; // 0 - detect 1 (from 11010)
    #10 x = 1; // 1
    #10 x = 0; // 0 - detect 2 (from 01010)
    #10 x = 1; // 1
    #10 x = 0; // 0 - detect 3 (from 1010)
    #20;

    // Test case 4: Reset during sequence
    $display("Test 4: Reset during sequence");
    #10 x = 1; // 1
    #10 x = 0; // 0
    #10 rst = 1; // Reset
    #10 x = 1; // 1 (should be ignored)
    #10 rst = 0; // Release reset
    #10 x = 0; // 0
    #20;

    // Test case 5: Long sequence with no pattern
    $display("Test 5: 111000111000");
    #10 x = 1; #10 x = 1; #10 x = 1;
    #10 x = 0; #10 x = 0; #10 x = 0;
    #10 x = 1; #10 x = 1; #10 x = 1;
    #10 x = 0; #10 x = 0; #10 x = 0;
    #20;

    $display("All tests completed");
    $finish;
  end

  // Monitoring
  initial begin
    $monitor("Time = %0t ns: x = %b, State = %s, z = %b",
             $time, x, uut.state.name(), z);
  end

  // Create waveform file
  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, tb_moore_sequence_detector_1010);
  end
endmodule