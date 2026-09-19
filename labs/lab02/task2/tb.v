// tb.v
// Starter testbench template -- YOU complete this file.

// tb.v
// Starter testbench template -- YOU complete this file.

module tb;

  localparam WIDTH = 8;
  localparam DEPTH = 4;

  // TODO: declare the inputs and outputs
  reg  [$clog2(DEPTH)-1:0] t_sel;
  wire [WIDTH-1:0]         t_dout;

  // TODO: instantiate DUT here
  lut #(
    .WIDTH(WIDTH),
    .DEPTH(DEPTH)
  ) DUT (
    .sel(t_sel),
    .dout(t_dout)
  );

  // Waveform dump configuration (DO NOT CHANGE)
  string vcd_file;
  initial begin
    if ($value$plusargs("vcd=%s", vcd_file)) begin
      $dumpfile(vcd_file);
      $dumpvars(0, DUT);
    end
  end

  initial begin
    // TODO: apply different input combinations
    t_sel = 2'd0; #5;
    t_sel = 2'd1; #5;
    t_sel = 2'd2; #5;
    t_sel = 2'd3; #5;
    $finish;
  end

  initial
    $monitor($time, " sel=%d | dout=%d", t_sel, t_dout); // change as required

endmodule
