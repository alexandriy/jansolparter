Program slau;
// функция
function solve(a,b,c,d,e,f:real):string;
begin
    // ax + by = c
    // dx + ey = f
    // det = |a b| |c|
    //       |d e| |f| 
    
    // detX = |c b| 
    //        |f e|  
    
    // detY = |a c|
    //        |d f| 
    
    var det:real := a*e-b*d;
    
    // если det = 0
    // A = B       
    // |A-B| < Epsilon
    if (abs(det) < real.Epsilon) then
    begin
       result := 'no solution';
       exit;
    end;
    
    var det_x:real := c*e-f*b;
    var det_y:real := a*f-c*d;
    var x:real := det_x/det;
    var y:real := det_y/det;
    
    result := 'x=' + x + ' y=' + y;
end;

// главная программа
begin
   writeln(solve(1,1,3,1,-1,1));
   writeln(solve(2,1,4,6,3,5));
end.