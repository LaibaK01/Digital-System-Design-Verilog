module multi_input_gates (
    input  logic A, B, C, D,
    output logic Y1, // 4-input AND
    output logic Y2  // 4-input OR
);

    assign Y1 = A & B & C & D;
    assign Y2 = A | B | C | D;

endmodule
