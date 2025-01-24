// Modelsim-ASE requires a timescale directive
`timescale 1 ns / 1 ns

module minilab0_tb();

  logic CLOCK2_50;
  logic CLOCK3_50;
  logic CLOCK4_50;
  logic CLOCK_50;

  logic [3:0]		KEY;
  logic [9:0]		SW;

  logic [9:0]		LEDR;
  logic  [6:0]		HEX0;
  logic  [6:0]		HEX1;
  logic  [6:0]		HEX2;
  logic  [6:0]		HEX3;
  logic  [6:0]		HEX4;
  logic  [6:0]		HEX5;

  Minilab0 iDUT(.*);

  logic clk;
  assign CLOCK_50 = clk;

initial begin
  clk = 1'b0;
  CLOCK2_50 = 1'b0;
  CLOCK3_50 = 1'b0;
  CLOCK4_50 = 1'b0;

  @(posedge clk);
  SW = '0;
  SW[0] = 1'b1;
  KEY = '1;
  KEY[0] = 1'b0;
  @(posedge clk);
  KEY[0] = 1'b1;

  #1000;
  $stop();
end

always
  #5 clk = ~clk;

endmodule