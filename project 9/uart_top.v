module uart_top(
input clk,
input rst,
input tx_start,
input [7:0] tx_data,
output [7:0] rx_data,
output rx_done
);

wire tx_wire;
wire busy;

uart_tx TX(
.clk(clk),
.rst(rst),
.tx_start(tx_start),
.tx_data(tx_data),
.tx(tx_wire),
.busy(busy)
);

uart_rx RX(
.clk(clk),
.rst(rst),
.rx(tx_wire),
.rx_data(rx_data),
.rx_done(rx_done)
);

endmodule