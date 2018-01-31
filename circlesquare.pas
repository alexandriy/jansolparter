program square;
function round_to (value:real; precision: integer):real;
begin
  var p:=Power(10,precision);
  result:=Round(value*p)/p;
end;
function circle_square (r, p: real):real;
begin //r-радиус; S-площадь; S=Pi*r*r/
  result:=r*r*p
end;
begin
  var r:real;
  var p:real;
  r:=5;
  p:=Pi;
  r:=round_to(circle_square(r,p),2);
  Println (r);
end.