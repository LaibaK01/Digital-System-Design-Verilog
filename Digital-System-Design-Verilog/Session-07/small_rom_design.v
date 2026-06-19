module small_rom (
  input [1:0] addr,
  output reg [7:0] data
);

  always @(addr) begin
    case (addr)
      2'b00: data = 8'hAA;
      2'b01: data = 8'hBB;
      2'b10: data = 8'hCC;
      2'b11: data = 8'hDD;
      default: data = 8'h00;
    endcase
  end

endmodule
