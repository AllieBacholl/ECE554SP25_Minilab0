module FIFO
#(
  parameter DEPTH=8,
  parameter DATA_WIDTH=8
)
(
  input  clk,
  input  rst_n,
  input  rden,
  input  wren,
  input  [DATA_WIDTH-1:0] i_data,
  output reg [DATA_WIDTH-1:0] o_data,
  output full,
  output empty
);

logic [DEPTH-1:0] data [DATA_WIDTH-1:0];

logic [3:0]rdptr;
logic [3:0]wrptr;

assign full = (wrptr - rdptr) >= (DEPTH);
assign empty = (rdptr == wrptr);

// Set Data
always_ff @(posedge clk or negedge rst_n) begin
  if (~rst_n) begin
    o_data = '0;
    rdptr = 1'b0;
    wrptr = 1'b0;
  end else begin
    if (rden) begin
      if (~empty) begin
        o_data = data[rdptr];
        rdptr = rdptr + 1'b1;
      end
    end
    else if (wren) begin
      if (~full) begin
        data[wrptr] = i_data;
        wrptr = wrptr + 1'b1;
      end
    end
  end
end

endmodule