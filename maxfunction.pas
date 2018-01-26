program maxfunction;
function max (a,b,c:real):real;
begin

  if (a>b) then
    begin
    //a greater than b/
    if (a>c) then
      begin
        //a greater than c/
      result:=a;
      end
      else
      begin
          //c greater than a/
       result:=c;
      end
    end
  else
  //b greater than a/ 
    begin
  if (b>c) then 
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
var maxvalue: real;
maxvalue:=max (50,71,100);
Println (maxvalue);

end.
