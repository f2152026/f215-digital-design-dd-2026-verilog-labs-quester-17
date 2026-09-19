// and_beh_intra.v
// Behavioral AND gate with intra-assignment delay (y = #5 (a & b))
module and_beh_intra (
  input      a,
  input      b,
  output reg y
);

  always @(*) begin
    y = #5 (a & b);
  end

endmodule