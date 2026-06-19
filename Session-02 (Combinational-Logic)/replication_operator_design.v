module replication_operator (
    input  logic [1:0] A,
    output logic [7:0] B
);

    // Replicates the 2-bit vector A four times to create an 8-bit vector
    assign B = {4{A}};

endmodule
