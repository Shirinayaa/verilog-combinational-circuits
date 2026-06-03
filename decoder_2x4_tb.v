module decoder_2x4_tb;
reg a,b,expected_y0,expected_y1,expected_y2,expected_y3;
wire y0,y1,y2,y3;

decoder_2x4 uut(
    .a(a),
    .b(b),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

integer i;
initial begin
    $dumpfile("decoder_2x4_wave.vcd");
    $dumpvars(0,decoder_2x4_tb);
    $display("A B | Y0 Y1 Y2 Y3");
    for (i = 0 ;i<4 ;i=i+1 ) 
    begin
        {a,b}=i;
        expected_y0 = ~a & ~b;
        expected_y1 = ~a & b;
        expected_y2 = a & ~b;
        expected_y3 = a & b;
        #10;
        $display("%b %b | %b %b %b %b",a,b,y0,y1,y2,y3);
        if(y0!=expected_y0)
            $display("Y0 Error");
        if(y1!=expected_y1)
            $display("Y1 Error");
        if(y2!=expected_y2)
            $display("Y2 Error");
        if(y3!=expected_y3)
            $display("Y3 Error");    
    end
    $finish;
end
endmodule
