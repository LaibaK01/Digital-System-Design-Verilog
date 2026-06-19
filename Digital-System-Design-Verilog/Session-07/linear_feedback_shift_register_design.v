module lfsr_4bit (
    input clk, reset,
    output reg [3:0] lfsr
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            lfsr <= 4'b0001;  // Initial nonzero state
        else
            lfsr <= {lfsr[2:0], lfsr[3] ^ lfsr[2]};  // Feedback taps
    end
endmodule
