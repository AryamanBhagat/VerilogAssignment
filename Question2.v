module binMult(a, b, out);
input [1:0] a, b;
output [3:0] out;
wire A1C, A2C, B1C, B2C;

Not A1C_(A1C, a[0]);
Not A2C_(A2C, a[1]);
Not B1C_(B1C, b[0]);
Not B2C_(B2C, b[1]);

And O1_(out[0], a[0], b[0]);

wire O21, O22, O23, O24;
And O21_(O21, A2C, a[0], b[1]);
And O22_(O22, a[0], b[1], B1C);
And O23_(O23, a[1], A1C, b[0]);
And O24_(O24, a[1], B2C, b[0]);
Or O2_(out[1], O21, O22, O23, O24);

wire O31, O32;
And O31_(O31, a[1], A1C, b[1]);
And O32_(O32, a[1], b[1], B1C);
Or O3_(out[2], O31, O32);

And O4_(out[3], a[0], a[1], b[0], c[0]);

endmodule