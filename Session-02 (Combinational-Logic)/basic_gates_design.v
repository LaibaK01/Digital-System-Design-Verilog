module basic_gates (
    input  logic A,
    input  logic B,
    output logic Y_not,
    output logic Y_and,
    output logic Y_or,
    output logic Y_xor
);

    assign Y_not = ~A;
    assign Y_and = A & B;
    assign Y_or  = A | B;
    assign Y_xor = A ^ B;

endmodule