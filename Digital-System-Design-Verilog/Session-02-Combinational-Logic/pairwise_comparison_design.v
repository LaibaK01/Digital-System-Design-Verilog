module pairwise_comparison (
    input  logic a, b, c, d, e,
    output logic [24:0] Y // 25-bit output for 25 comparisons
);

    // Combine individual bits into a 5-bit vector
    logic [4:0] vec;
    assign vec = {a, b, c, d, e};

    // Vector 1: Replicate each bit 5 times sequentially: {5{a}, 5{b}, 5{c}, 5{d}, 5{e}}
    // Vector 2: Replicate the entire 5-bit pattern 5 times: {a,b,c,d,e, a,b,c,d,e, ...}
    // XNOR (~^) returns 1 if bits match, 0 if they don't
    assign Y = ~({ {5{vec[4]}}, {5{vec[3]}}, {5{vec[2]}}, {5{vec[1]}}, {5{vec[0]}} } ^ {5{vec}});

endmodule
