program volume;
function round_to (value:real; precision: integer):real;
begin
  var p:=Power(10,precision);
  result:=Round(value*p)/p;
end;
function volume_circle(p,r:real):real;
begin //r-радиус; V-объем шара; V=4/3*Pi*r*r/
  result:=4/3*Pi*r*r
end;
begin
  var r:real;
  var p:real;
  r:=5;
  p:=Pi;
  r:=round_to(volume_circle(r,p),2);
  Println (r);
end.
