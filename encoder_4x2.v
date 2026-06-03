module encoder_4x2(
    input y0,y1,y2,y3,
    output a,b
);
assign a = y3 | y2;
assign b = y3 | y1;
endmodule
