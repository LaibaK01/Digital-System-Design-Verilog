module mealy_sequence_detector_1101(
  input clk, rst, 
  input x,
  output reg z
);
  typedef enum reg [2:0] {S0, S1, S2, S3} state_t;
  state_t state, next_state;

  always @(posedge clk or posedge rst) begin
    if (rst)
      state <= S0;
    else
      state <= next_state;
  end

  always @(*) begin
    case(state)
      S0: next_state = (x) ? S1 : S0;
      S1: next_state = (x) ? S2 : S0;
      S2: next_state = (x) ? S2 : S3;
      S3: next_state = (x) ? S0 : S0;
      default: next_state = S0;
    endcase
  end

  always @(state, x) begin
    z = (state == S3 && x);
  end
endmodule
