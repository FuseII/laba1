program circle;
uses crt;
var 
  r,x :real;//������ � ����� ��������
  a, t: real;//������� � ������ �������. ������������
  go:char;//������ �����


begin 
 go:='y';
 while (go = 'y') do
    begin
    clrscr;
    writeln('��� ������������� ��������� �� ����������� ������������ ����� �� ���������');
 repeat  //�������� ���� �����
    writeln('������� ������ � ����� ���������');
    readln(r, x);
 until ((r>0) and (x>=0)); 
 
  repeat  //�������� ���� ������������
    writeln('������� ������� � ������ ��������������� ������������');
    readln(a, t);
 until ((a>0) and (t>=0)); 
 
 if ((x-r)>(t+a)) or ((x+r)<t) then
     writeln('�� ������������');

  
 

   if((x-r)=(t+a)) or ((x+r) = t) or (x = t) then 
     writeln('�������� � ����� �����')
   else  
      if((x-r)<=t) and ((x+r)>=t)then
     writeln('������������');
 
   if (x = t + a/2) and ((r/(a*sqrt(3)/2))=0.5) then  //sin(Pi/6) = 0.5
       writeln('�������� ������ � ��������������');

   if (x = t + a/2) and (a/2 = r) then 
       writeln('����������� ������ � ��������') ; 
  
   if ((x-r)<t) and (t < (x+r)) and ((x-r) < (t+a)) and ((t+a) < (x+r)) and (R>=(a*sqrt(3)/2)) then
      writeln('����������� ������ � ��������');
   if ((x-r)>t) and ((x+r)<(t+a))  then
        writeln('�������� ������ � �����������');
        
      
        
   writeln('�� ������ ��������� ��������� Y/N?');
   go:=readkey;
  end;      

    
end.