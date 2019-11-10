module mod8Counter_TB();

    reg clock, enable, reset;
    wire[3:0] out;

    mod8Counter 