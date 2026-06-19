module tb_bit_population_count;
  reg [255:0] in;
  wire [7:0] count;

  bit_population_count uut (.in(in), .count(count));

  initial begin
    $monitor("Input = %h | Count = %d", in, count);

    in = {{185{1'b1}}, {71{1'b0}}}; #10;

    $stop;
  end
endmodule
