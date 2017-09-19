`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2017 12:40:07 AM
// Design Name: 
// Module Name: tester_10ge
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tester_10ge(

//--- AXI-Steam data input
	input              axi4_rx_tvalid          ,// Data valid signal for RX Data
    input   [31:0]     axi4_rx_tdata           ,// Read data for the packet checker
    input              axi4_rx_tlast           ,// End of frame for Ethernet Frame
    input   [3:0]      axi4_rx_tkeep           ,// Indicates valid bytes in word
    input   [25:0]     axi4_rx_tuser           ,// Status Word from RX
    input              axi4_rx_terr            ,// Error signal for Ethernet Frame
//--- AXI-Steam data output
	output             axis_tx_tvalid          ,// Write enable signal
	output  [31:0]     axis_tx_tdata           ,// Write data from the packet generator
	output             axis_tx_tlast           ,// End of frame for ethernet frame
    output  [3:0]      axis_tx_tkeep           ,// Indicates valid bytes in word
    output             axis_tx_tcrc            ,// CRC to be Appended or not at the end
    output             axis_tx_terr            // TX Error asserted by user
    );
endmodule
