module tb_mealy_fsm;
  reg clk, rst, x;
  wire z;

  mealy_sequence_detector_1101 uut (
    .clk(clk),
    .rst(rst),
    .x(x),
    .z(z)
  );

  always #5 clk = ~clk;  // Clock generator

  initial begin
    clk = 0; rst = 1; x = 0;
    #10 rst = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 1; // 1101 detected
    #10 x = 0;
    #10 $stop;
  end
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars;
  end
endmodule
