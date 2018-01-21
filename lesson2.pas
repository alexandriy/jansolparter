program summ;
function percentage (a, b: real):real;
begin
  Result:=a*b / 100;
end;

function min (a, b: integer):boolean;
begin
var isMin: boolean;
isMin:= a<b;
  result:= isMin;
  
end;

function max (a,b: integer): boolean;
begin
  var isMax: boolean;
  isMax:= a>b;
  result:= isMax;
  
end;

procedure squareroot (a,b,c:real);
begin
//a*x*x+b*x+c=0
//d= b*b-4ac
//x= (-b+sqrt(D) )/2a
//x= (-b-sqrt(D) )/2a
//d<0 нет корней
//d=0 один корень
//d>0 два корня
  var d:real; 
  d:= b*b-4*a*c;
  if d<0 then
    begin
      Println ('no root');
    end
  else 
    if d=0 then
      begin 
        var x: real;
        x:= -b/2*a;
        Println (x);
      end
    else
      begin
        var x: real;
        x:= (-b+sqrt(d) )/2*a;
        Println ('x1='+x);
        x:= (-b-sqrt(d) )/2*a;
        Println ('x2='+x);
      end
  
end;




begin //main//




  var a: real; 
  var b: real;
  a:=1.37;
  b:=17;
  b:=percentage(a, b);  
  
  Println (b);

Println (max (40, 54));

squareroot (1,2, 1);

var str: string;
str:='kafka';
str:= str*10;
Println (str);
end.