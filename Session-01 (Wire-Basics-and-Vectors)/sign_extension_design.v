module sign_extension (
    input  logic [7:0] in,
    output logic [31:0] out
);

    // Replicate the sign bit (in[7]) 24 times and concatenate it with the original 8 bits
    assign out = { {24{in[7]}}, in };

endmodule
