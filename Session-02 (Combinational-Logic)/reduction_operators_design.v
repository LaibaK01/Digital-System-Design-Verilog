module reduction_operators (
    input  logic [7:0] A,
    output logic Y1, // Reduction AND
    output logic Y2, // Reduction OR
    output logic Y3  // Reduction XOR
);

    assign Y1 = &A;
    assign Y2 = |A;
    assign Y3 = ^A;

endmodule
