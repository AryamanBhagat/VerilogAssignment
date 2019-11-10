module sequenceDetector(out, clock, in)
input clock, in;
output out;
reg [2:0] h;

initial
begin
    h = 3'b000;
end

always @(posedge clock)
begin
    h = h << 1;
    h += in;
    if(h == 3'b110){
        out = 1;
    }

    if(h == 3'b000){
        out = 0;
    }
end

endmodule