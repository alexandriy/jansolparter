program minfunction;
function min (a,b,c:real):real;
begin
  
  if (a<b) then
    begin
    //a less than b
    if (a<c) then
      begin
        //a less than c
        result:=a;
      end
      else
      begin
        //a greater c
        result:=c;
      end
    end
  else
  //a greater than b  
    begin
    if (b<c) then
      begin
        result:=b;
      end
    else
      begin
        result:=c;
      end
  
    end;
end;
begin //main/
var minvalue:real;
minvalue:=min(67, 45, 101);
Println (minvalue);

end.

