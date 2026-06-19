module lfsr_8bit (
    input clk, reset,
    output reg [7:0] lfsr
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            lfsr <= 8'h1; // Initial nonzero value
        else
            lfsr <= {lfsr[6:0], lfsr[7] ^ lfsr[5] ^ lfsr[4] ^ lfsr[3]};  // Feedback taps

    end
endmodule
