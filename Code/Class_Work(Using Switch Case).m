clc
clear
close all

fprintf('For trapezoidal formula press "1"\n');
fprintf('For Simpson 1/3 formula press "2"\n');

p=input('Enter your choice:');

switch(p)
case 1
  %Trapezoidal formula for numerical integration

clc
clear
a=input('Enter the value of a=');
b=input('Enter the value of b=');
n=input('Enter the value of n=');
h=(b-a)/n;
for r=1:1:10
  x(1)=0;
  y(1)=x(1)/(1+x(1));
  x(r+1)=x(r)+h;
  y(r+1)=x(r+1)/(1+x(r+1));
end
I=h/2*((y(1)+y(7))+2*(y(2)+y(3)+y(4)+y(5)+y(6)));
fprintf('The integral value is %0.4f',I);

case 2
%Simpsons 1/3 formula for numerical integration

clc
clear
a=input('Enter the value of a=');
b=input('Enter the value of b=');
n=input('Enter the value of n=');
h=(b-a)/n;
for r=1:1:10
  x(1)=0;
  y(1)=x(1)/(1+x(1));
  x(r+1)=x(r)+h;
  y(r+1)=x(r+1)/(1+x(r+1));
end
I=h/3*((y(1)+y(7))+4*(y(2)+y(4)+y(6))+2*(y(3)+y(5)));
fprintf('The integral value is %0.4f',I);
end

  
