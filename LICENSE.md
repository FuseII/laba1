program circle;
uses crt;
var 
  r,x :real;//радиус и центр поукруга
  a, t: real;//сторона и начало равност. треугольника
  go:char;//повтор цикла


begin 
 go:='y';
 while (go = 'y') do
    begin
    clrscr;
    writeln('Вас пприветствует программа по определению расположения фигур на плоскости');
 repeat  //надежный ввод круга
    writeln('Введите радиус и центр полукруга');
    readln(r, x);
 until ((r>0) and (x>=0)); 
 
  repeat  //надежный ввод треугольника
    writeln('Введите сторону и начало равностороннего треугольника');
    readln(a, t);
 until ((a>0) and (t>=0)); 
 
 if ((x-r)>(t+a)) or ((x+r)<t) then
     writeln('Не пересекаются');

  
 

   if((x-r)=(t+a)) or ((x+r) = t) or (x = t) then 
     writeln('Касаются в одной точке')
   else  
      if((x-r)<=t) and ((x+r)>=t)then
     writeln('Пересекаются');
 
   if (x = t + a/2) and ((r/(a*sqrt(3)/2))=0.5) then  //sin(Pi/6) = 0.5
       writeln('Полугруг вписан в полуокружность');

   if (x = t + a/2) and (a/2 = r) then 
       writeln('Треугольник вписан в полугруг') ; 
  
   if ((x-r)<t) and (t < (x+r)) and ((x-r) < (t+a)) and ((t+a) < (x+r)) and (R>=(a*sqrt(3)/2)) then
      writeln('Треугольник вложен в полукруг');
   if ((x-r)>t) and ((x+r)<(t+a))  then
        writeln('Полукруг вложен в треугольник');
        
      
        
   writeln('вы хотите повторить программу Y/N?');
   go:=readkey;
  end;      

    
end.
