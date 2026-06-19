module moore_sequence_detector_1010(
  input clk, rst, 
  input x,
  output reg z
);
  typedef enum reg [2:0] {S0, S1, S2, S3, S4} state_t;
  state_t state, next_state;

  // State register
  always @(posedge clk or posedge rst) begin
    if (rst)
      state <= S0;
    else
      state <= next_state;
  end

  // Next state logic
  always @(*) begin
    case(state)
      S0: next_state = x ? S1 : S0;      // Start state, looking for first '1'
      S1: next_state = x ? S1 : S2;      // '1' detected, looking for '0'
      S2: next_state = x ? S3 : S0;      // '10' detected, looking for '1'
      S3: next_state = x ? S1 : S4;      // '101' detected, looking for final '0'
      S4: next_state = x ? S1 : S0;      // Pattern complete, reset to find next
      default: next_state = S0;
    endcase
  end

  // Output logic (assert z when in S4)
  always @(posedge clk) begin
    if (rst)
      z <= 0;
    else
      z <= (state == S4);
  end
endmodule