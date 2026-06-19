module tb_sign_extension;
    logic [7:0] in;
    logic [31:0] out;

    // Instantiate design
    sign_extension uut (.*);

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_sign_extension);
        
        $display("Input (Hex) | Input (Dec) | Output (Hex) | Output (Dec)");
        $display("-------------------------------------------------------");
        
        // Test case 1: Positive Number (MSB is 0) -> Upper bits fill with 0s
        in = 8'h5A; // Decimal: 90
        #10;
        $display("    2'h%h   |     %3d    |   32'h%h   |     %3d", in, $signed(in), out, $signed(out));
        
        // Test case 2: Negative Number (MSB is 1) -> Upper bits fill with 1s (Sign Extension)
        in = 8'hA5; // Decimal: -91 (in 2's complement)
        #10;
        $display("    2'h%h   |     %3d    |   32'h%h   |     %3d", in, $signed(in), out, $signed(out));

        // Test case 3: Zero
        in = 8'h00; // Decimal: 0
        #10;
        $display("    2'h%h   |     %3d    |   32'h%h   |     %3d", in, $signed(in), out, $signed(out));

        // Test case 4: Maximum Negative Value
        in = 8'h80; // Decimal: -128
        #10;
        $display("    2'h%h   |     %3d    |   32'h%h   |     %3d", in, $signed(in), out, $signed(out));
        
        $finish;
    end
endmodule
