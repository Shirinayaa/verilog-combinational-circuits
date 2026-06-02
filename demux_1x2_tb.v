module demux_1x2_tb;
reg s,i,expected_y0,expected_y1;
wire y0,y1;

demux_1x2 uut(
    .s(s),
    .i(i),
    .y0(y0),
    .y1(y1)
);

integer j;
initial begin
    $dumpfile("demux_1x2_wave.vcd");
    $dumpvars(0,demux_1x2_tb);
    $display("S I | Y0 Y1");
    for(j=0;j<4;j=j+1)
    begin
        {s,i}=j;
        expected_y0 = ~s & i;
        expected_y1 = s & i;
        #10;
        $display("%b %b | %b %b",s,i,y0,y1);
        if(y0!=expected_y0)
            $display("Y0 Error");
        if(y1!=expected_y1)
            $display("Y1 Error");
    end
    $finish;
end
endmodule
