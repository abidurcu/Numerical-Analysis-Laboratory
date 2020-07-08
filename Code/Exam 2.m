clc
clear
a=input('Enter the value of a=');
b=input('Enter the value of b=');
n=input('Enter the value of n=');
h=(b-a)/n;
for r=1:1:10
  x(1)=0;
  y(1)=cos(x(1));
  x(r+1)=x(r)+h;
  y(r+1)=cos(x(r+1));
end
I=h/2*((y(1)+y(5))+2*(y(2)+y(3)+y(4)));
fprintf('%0.4f',I);
