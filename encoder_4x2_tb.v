module encoder_4x2_tb;
reg y0,y1,y2,y3,expected_a,expected_b;
wire a,b;

encoder_4x2 uut(
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .a(a),
    .b(b)
);

integer i;
initial begin
    $dumpfile("encoder_4x2_wave.vcd");
    $dumpvars(0,encoder_4x2_tb);
    $display("Y0 Y1 Y2 Y3 | A B");
    for(i=0;i<16;i=i+1)
    begin
        {y0,y1,y2,y3}=i;
        if(i==1||i==2||i==4||i==8)
        begin
            expected_a = y3 | y2;
            expected_b = y3 | y1;
            #10;
            $display("%b %b %b %b | %b %b",y0,y1,y2,y3,a,b);
            if(a!=expected_a)
                $display("A Error");
            if(b!=expected_b)
                $display("B Error");
        end
    end
    $finish;
end
endmodule
