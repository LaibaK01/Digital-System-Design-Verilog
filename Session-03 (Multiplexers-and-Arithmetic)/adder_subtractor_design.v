module adder_subtractor (
  input [63:0] A,
  input [63:0] B,
  input control_signal,
  output reg [63:0] Result
);

  always@(*) begin // * means all inputs
    if (control_signal) begin // 1
      Result = A-B;
    end
    else begin // 0
      Result = A+B;
    end

  end

endmodule
