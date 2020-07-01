clc
clear
f = @(x) (x/(1+x));
x0 = input('Enter the value of initial limit x0=');
xn = input('Enter the value of final limit xn=');
N = input('Enter the total no of terms N=');
h = ((xn-x0)/N);
area = 0;
while(x0<xn)
area = area+(h/2)*(f(x0)+f(x0+h));
x0 = x0+h;
end
fprintf('Integration using trapezoidal is=%f',area);