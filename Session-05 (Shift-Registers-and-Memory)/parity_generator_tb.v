module tb_parity_lut;
    reg [3:0] in;
    wire parity;

    parity_lut uut (.in(in), .parity(parity));

    initial begin
        $monitor("Time = %0t | Input = %b | Parity = %b", $time, in, parity);
        in = 4'b0001; #10;
        in = 4'b1010; #10;
        in = 4'b1111; #10;
        in = 4'b0100; #10;
        $stop;
    end
endmodule
