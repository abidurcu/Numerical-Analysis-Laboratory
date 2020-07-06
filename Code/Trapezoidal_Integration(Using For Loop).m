clc
clear
a=input('Enter the value of a=');
b=input('Enter the value of b=');
n=input('Enter the value of n=');
h=(b-a)/n;
for r=1:1:10
  x(1)=0;
  y(1)=(1/(1+x(1)^2));
  x(r+1)=x(r)+h;
  y(r+1)=(1/(1+x(r+1)^2));
end
I=h/2*((y(1)+y(6))+2*(y(2)+y(3)+y(4)+y(5)));
fprintf('The integral value is %0.4f',I);
