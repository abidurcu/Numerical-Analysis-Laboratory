clc
clear
%Runge Kutta methods
x0=input('x0=');
y0=input('y0=');
h=input('h=');
fx=x0*y0+y0^2;
k1=h*fx;
k2=h*(((x0+h/2)*(y0+k1/2))+(y0+k1/2)^2);
k3=h*(((x0+h/2)*(y0+k2/2))+(y0+k2/2)^2);
k4=h*((x0+h)*(y0+k3)+(y0+k3)^2);
dely=1/6*(k1+2*k2+2*k3+k4);
fprintf('dely=%0.4f\n',dely);
y1=y0+dely;
fprintf('y1=%0.4f\n',y1);
x1=x0+h;
fx1=x1*y1+y1^2;
k1=h*fx1;
k2=h*(((x1+h/2)*(y1+k1/2))+(y1+k1/2)^2);
k3=h*(((x1+h/2)*(y1+k2/2))+(y1+k2/2)^2);
k4=h*((x1+h)*(y1+k3)+(y1+k3)^2);
dely1=1/6*(k1+2*k2+2*k3+k4);
fprintf('dely1=%0.4f\n',dely1);
y2=y1+dely1;
fprintf('y2 =%0.4f',y2);
