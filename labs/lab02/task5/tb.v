// tb.v task 5

module tb;

  reg  [3:0] t_a;
  reg  [3:0] t_b;
  reg        t_op;
  wire [3:0] t_result;

  alu DUT (
    .a(t_a),
    .b(t_b),
    .op(t_op),
    .result(t_result)
  );

  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, tb);
    end
  end

  initial begin
    // Test Addition (op = 0)
    t_op = 0; t_a = 4'd5; t_b = 4'd3; #5;
    t_a = 4'd2; t_b = 4'd4; #5;

    // Test Subtraction (op = 1)
    t_op = 1; t_a = 4'd7; t_b = 4'd2; #5;
    t_a = 4'd9; t_b = 4'd4; #5;

    // Toggle op to check sensitivity bug
    t_op = 0; #5;

    $finish;
  end

  initial
    $monitor($time, " op=%b a=%d b=%d | result=%d", t_op, t_a, t_b, t_result);

endmodule