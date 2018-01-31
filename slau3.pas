Program slau3;
//функция
function solve(a,b,c,d,e,f,o,p,n,j,k,l:real):string;
begin
//ag+bh+ci=j/
//dg+eh+fi=k/
//og+ph+ni=l/
//det=|abc|
//    |def| 
//    |opn|
//det g=|jbc|
//      |kef|
//      |lpn|
//det h=|ajc|
//      |dkf|
//      |oln|
//det i=|abj|
//      |dek| 
//      |opl| 
  var det:real:=a*e*n+b*f*o+d*p*c-c*e*o-b*d*n-a*f*p;
  // если det = 0
  // A = B       
  // |A-B| < Epsilon  
    if (abs(det) < real.Epsilon) then
    begin
       result := 'no solution';
       exit;
    end;

  var det_g:real:=j*e*n+b*f*l+k*p*c-c*e*l-b*k*n-j*f*p;
  var det_h:real:=a*k*n+j*f*o+d*l*c-c*k*o-j*d*n-a*f*l;
  var det_i:real:=a*e*l+b*k*o+d*p*j-j*e*o-b*d*l-a*k*p;
  var g:real:=det_g/det;
  var h:real:=det_h/det;
  var i:real:=det_i/det;

  result := 'g=' + g + ' h=' + h +   ' i=' + i;
 end; 

begin //main/
  writeln(solve(1,2,3,4,5,6,7,8,9,10,11,12));
  writeln(solve(1,2,3,4,0,6,7,8,9,10,11,12));
end.