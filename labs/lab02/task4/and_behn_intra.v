// and_beh_before.v
// Behavioral AND gate with delay before evaluation (#5 y = a & b)
module and_beh_before (
  input      a,
  input      b,
  output reg y
);

  always @(*) begin
    #5 y = a & b;
  end

endmodule