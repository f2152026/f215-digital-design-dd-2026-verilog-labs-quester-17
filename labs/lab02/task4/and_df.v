// and_df.v
// Dataflow AND gate with continuous assignment delay
module and_df (
  input  a,
  input  b,
  output y
);

  assign #5 y = a & b;

endmodule