module lfsr_32bit (
    input clk, reset,
    output reg [31:0] lfsr
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            lfsr <= 32'h1; // Initial nonzero value
        else
            lfsr <= {lfsr[30:0], lfsr[31] ^ lfsr[21] ^ lfsr[1] ^ lfsr[0]};  // Optimized taps
    end
endmodule
