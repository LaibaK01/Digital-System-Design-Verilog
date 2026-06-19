module parity_lut (
    input [3:0] in,
    output reg parity
);
    always @(*) begin
        case (in)
            4'b0000, 4'b0011, 4'b0101, 4'b0110, 
            4'b1001, 4'b1010, 4'b1100, 4'b1111: parity = 1;
            default: parity = 0;
        endcase
    end
endmodule
