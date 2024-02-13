module fdmax(addrh, addrv,
    data_inout0, data_inout1, data_inout2, data_inout3, data_inout4, data_inout5, data_inout6, data_inout7,
    chip_enable,
    write_enable,
    output_enable,
    reset,
    clk);
parameter DATA_WIDTH=16;
parameter SRAM_BANK=8;

input [2:0] addrh;
input [7:0] addrv;

inout [DATA_WIDTH-1:0] data_inout0;
inout [DATA_WIDTH-1:0] data_inout1;
inout [DATA_WIDTH-1:0] data_inout2;
inout [DATA_WIDTH-1:0] data_inout3;
inout [DATA_WIDTH-1:0] data_inout4;
inout [DATA_WIDTH-1:0] data_inout5;
inout [DATA_WIDTH-1:0] data_inout6;
inout [DATA_WIDTH-1:0] data_inout7;

input [SRAM_BANK-1:0] chip_enable;
input [SRAM_BANK-1:0] write_enable;
input [SRAM_BANK-1:0] output_enable;
input [SRAM_BANK-1:0] reset;

wire [DATA_WIDTH-1:0] data_to_pe;
wire [DATA_WIDTH-1:0] data_to_pe0;
wire [DATA_WIDTH-1:0] data_to_pe1;
wire [DATA_WIDTH-1:0] data_to_pe2;
wire [DATA_WIDTH-1:0] data_to_pe3;
wire [DATA_WIDTH-1:0] data_to_pe4;
wire [DATA_WIDTH-1:0] data_to_pe5;
wire [DATA_WIDTH-1:0] data_to_pe6;
wire [DATA_WIDTH-1:0] data_to_pe7;

wire [DATA_WIDTH-1:0] data_from_pe;
wire [DATA_WIDTH-1:0] data_from_pe0;
wire [DATA_WIDTH-1:0] data_from_pe1;
wire [DATA_WIDTH-1:0] data_from_pe2;
wire [DATA_WIDTH-1:0] data_from_pe3;
wire [DATA_WIDTH-1:0] data_from_pe4;
wire [DATA_WIDTH-1:0] data_from_pe5;
wire [DATA_WIDTH-1:0] data_from_pe6;
wire [DATA_WIDTH-1:0] data_from_pe7;
input clk;

reg [15:0] zeros;
initial begin
    assign zeros=16'b0;
end

pearray pearray0(
    .iarray0 (data_to_pe0),
    .iarray1 (data_to_pe1),
    .iarray2 (data_to_pe2),
    .iarray3 (data_to_pe3),
    .iarray4 (data_to_pe4),
    .iarray5 (data_to_pe5),
    .iarray6 (data_to_pe6),
    .iarray7 (data_to_pe7),
    .ibiasarray0 (zeros),
    .ibiasarray1 (zeros),
    .ibiasarray2 (zeros),
    .ibiasarray3 (zeros),
    .ibiasarray4 (zeros),
    .ibiasarray5 (zeros),
    .ibiasarray6 (zeros),
    .ibiasarray7 (zeros),
    .infifo(zeros),
    .oarray0 (data_from_pe0),
    .oarray1 (data_from_pe1),
    .oarray2 (data_from_pe2),
    .oarray3 (data_from_pe3),
    .oarray4 (data_from_pe4),
    .oarray5 (data_from_pe5),
    .oarray6 (data_from_pe6),
    .oarray7 (data_from_pe7),
    .onfifo (),
    .onext (),
    .oprev (),
    .clk (clk));


sram sram0(
    .address (addrv), // Address Input
	.data (data_inout0), // Data bi-directional
	.chip_enable (chip_enable[0]), // Chip Select (active low)
	.write_enable (write_enable[0]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[0]), // Output Enable (active low)
	.reset (reset[0]));

sram sram1(
    .address (addrv), // Address Input
	.data (data_inout1), // Data bi-directional
	.chip_enable (chip_enable[1]), // Chip Select (active low)
	.write_enable (write_enable[1]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[1]), // Output Enable (active low)
	.reset (reset[1]));

sram sram2(
    .address (addrv), // Address Input
	.data (data_inout2), // Data bi-directional
	.chip_enable (chip_enable[2]), // Chip Select (active low)
	.write_enable (write_enable[2]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[2]), // Output Enable (active low)
	.reset (reset[2]));

sram sram3(
    .address (addrv), // Address Input
	.data (data_inout3), // Data bi-directional
	.chip_enable (chip_enable[3]), // Chip Select (active low)
	.write_enable (write_enable[3]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[3]), // Output Enable (active low)
	.reset (reset[3]));

sram sram4(
    .address (addrv), // Address Input
	.data (data_inout4), // Data bi-directional
	.chip_enable (chip_enable[4]), // Chip Select (active low)
	.write_enable (write_enable[4]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[4]), // Output Enable (active low)
	.reset (reset[4]));

sram sram5(
    .address (addrv), // Address Input
	.data (data_inout5), // Data bi-directional
	.chip_enable (chip_enable[5]), // Chip Select (active low)
	.write_enable (write_enable[5]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[5]), // Output Enable (active low)
	.reset (reset[5]));

sram sram6(
    .address (addrv), // Address Input
	.data (data_inout6), // Data bi-directional
	.chip_enable (chip_enable[6]), // Chip Select (active low)
	.write_enable (write_enable[6]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[6]), // Output Enable (active low)
	.reset (reset[6]));

sram sram7(
    .address (addrv), // Address Input
	.data (data_inout7), // Data bi-directional
	.chip_enable (chip_enable[7]), // Chip Select (active low)
	.write_enable (write_enable[7]), // Write Enable/Read Enable (write on low)
	.output_enable (output_enable[7]), // Output Enable (active low)
	.reset (reset[7]));


mux8_1 mux8a(      
    .input_d0 (data_inout0),
    .input_d1 (data_inout1),
    .input_d2 (data_inout2),
    .input_d3 (data_inout3),
    .input_d4 (data_inout4),
    .input_d5 (data_inout5),
    .input_d6 (data_inout6),
    .input_d7 (data_inout7),
    .sel (addrh),
    .output_y(data_to_pe));

demux1_8 demux8a(
    .input_x (data_to_pe),
    .sel (addrh),
    .output_d0 (data_to_pe0),
    .output_d1 (data_to_pe1),
    .output_d2 (data_to_pe2),
    .output_d3 (data_to_pe3),
    .output_d4 (data_to_pe4),
    .output_d5 (data_to_pe5),
    .output_d6 (data_to_pe6),
    .output_d7 (data_to_pe7));


mux8_1 mux8b(      
    .input_d0 (data_from_pe0),
    .input_d1 (data_from_pe1),
    .input_d2 (data_from_pe2),
    .input_d3 (data_from_pe3),
    .input_d4 (data_from_pe4),
    .input_d5 (data_from_pe5),
    .input_d6 (data_from_pe6),
    .input_d7 (data_from_pe7),
    .sel (addrh),
    .output_y(data_from_pe));

demux1_8 demux8b(
    .input_x (data_from_pe),
    .sel (addrh),
    .output_d0 (data_inout0),
    .output_d1 (data_inout1),
    .output_d2 (data_inout2),
    .output_d3 (data_inout3),
    .output_d4 (data_inout4),
    .output_d5 (data_inout5),
    .output_d6 (data_inout6),
    .output_d7 (data_inout7));


endmodule