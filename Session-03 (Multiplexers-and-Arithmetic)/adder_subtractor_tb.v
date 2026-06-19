module tb_adder_subtractor;
  reg [63:0] A, B;
  reg control_signal;
  wire [63:0] Result;

  // Instantiate DUT
  adder_subtractor uut (.A(A), .B(B), .control_signal(control_signal), .Result(Result));

  initial begin
    $monitor("A = %d, B = %d, Add/Sub = %b | Result = %d", A, B, control_signal, Result);

    A =  {{32{1'b1}}, {32{1'b0}}} ; B = 10;  control_signal = 0; #10;  // 15 + 10


    $stop;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
  end

endmodule
