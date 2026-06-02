module mux_2x1(
    input i0,i1,s,
    output y
);
 assign y=(~s&i0)|(s&i1);
endmodule
