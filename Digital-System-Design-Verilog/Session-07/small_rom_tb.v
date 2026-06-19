module tb_small_rom;
    reg [1:0] addr;
    wire [7:0] data;

    small_rom uut (.addr(addr), .data(data));

    initial begin
        $monitor("Time = %0t | Addr = %b | Data = %h", $time, addr, data);
        addr = 2'b00; #10;
        addr = 2'b01; #10;
        addr = 2'b10; #10;
        addr = 2'b11; #10;
        $stop;
    end
endmodule
