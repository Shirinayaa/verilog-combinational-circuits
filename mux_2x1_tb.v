module mux_2x1_tb;
reg i0,i1,s,expected;
wire y;

mux_2x1 uut(
    .i0(i0),
    .i1(i1),
    .s(s),
    .y(y)   
);

initial begin
    $dumpfile("mux_2x1_wave.vcd");
    $dumpvars(0,mux_2x1_tb);
    $display("S I0 I1 | Y");
    s=0;i0=0;i1=0;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=0;i0=0;i1=1;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=0;i0=1;i1=0;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=0;i0=1;i1=1;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=1;i0=0;i1=0;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=1;i0=0;i1=1;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=1;i0=1;i1=0;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    s=1;i0=1;i1=1;expected=(~s&i0)|(s&i1);#10;
    $display("%b %b %b | %b",s,i0,i1,y);
    if(y!=expected)
        $display("Error");
    $finish;
end
endmodule
