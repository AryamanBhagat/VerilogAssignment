module mod8Counter(out, clock , enable, reset);
input clock, enable, reset;
output out;
reg [2:0] out;

initial 
begin  
    out = 0;
end

always @(posedge clock)
begin 
    if(enable && reset){
        out++;
    }
end

always @(negedge reset)
begin 
    out = 0;
end
endmodule