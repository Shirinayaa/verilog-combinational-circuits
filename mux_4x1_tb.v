module mux_4x1_tb; 
reg i0,i1,i2,i3,s0,s1,expected;
wire y;

mux_4x1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);
integer i;
initial begin
    $dumpfile("mux_4x1_wave.vcd");
    $dumpvars(0,mux_4x1_tb);
    $display("S1 S0 I0 I1 I2 I3 | Y");
    for (i = 0; i<64 ; i=i+1 ) 
    begin
        {s1,s0,i0,i1,i2,i3}=i;
        case ({s1,s0})
            2'b00: expected=i0;
            2'b01: expected=i1;
            2'b10: expected=i2;
            2'b11: expected=i3;
        endcase
        #10;
        $display("%b %b %b %b %b %b | %b",s1,s0,i0,i1,i2,i3,y);
        if(y!=expected)
            $display("Error");
    end
    $finish;

end
endmodule
