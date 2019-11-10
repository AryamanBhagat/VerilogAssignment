module priorityEncoder(D, A);
input [7:0] D;
output [2:0] A;

assign A[0] = (D[1] && !D[7:2]) | (D[3] && !D[7:4]) | (D[5] && !D[7:6]) | (D[7]);
assign A[1] = (D[2] && !D[7:3]) | (D[3] && !D[7:4]) | (D[6] && !D[7]) | (D[7]);
assign A[2] = (D[4] && !D[7:5]) | (D[5] && !D[7:6]) | (D[6] && !D[7]) | (D[7]);

endmodule
