`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:09:45 04/06/2011 
// Design Name: 
// Module Name:    mul_4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mul(P,A,B);
reg [3:0] nA;

initial begin
	P = {8{1'b0}};
end
	nA=(~A[3:0])+1;