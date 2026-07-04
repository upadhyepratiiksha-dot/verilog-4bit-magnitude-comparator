module magnitude_comparator_test;
reg [3:0]a,b;
reg cin;
wire  aeqb, altb, agtb;

mag_comparator dut(.AeqB(aeqb), .AltB(altb), .AgtB(agtb), .A(a), .B(b), .CIN(cin));

initial
begin

$monitor($time, "aeqb=%h, altb=%h, agtb=%h, a=%h, b=%h, c=%h", aeqb, altb, agtb, a, b, cin);

#5;
a= 4'b0001;
b= 4'b1000;
cin= 1'b1;

#5;
a= 4'b0101;
b= 4'b1010;
cin= 1'b1;

#5;
a= 4'b1111;
b= 4'b1000;
cin= 1'b1;

#5;
a= 4'b1111;
b= 4'b1111;
cin= 1'b1;

end
endmodule
