program length;
function round_to (value:real; precision: integer):real;
begin
  var p:=Power(10,precision);
  result:=Round(value*p)/p;
end;
function length_circle(p,r:real):real;
begin //r-радиус; C-длина окружности; C=2Pi*r/
  result:=2*p*r
end;
begin
  var r:real;
  var p:real;
  r:=5;
  p:=Pi;
  r:=round_to (length_circle(r,p),2);
  Println (r);
end.