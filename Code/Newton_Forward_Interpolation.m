clc
clear
x = [140  150  160  170  180];
y = [3.685  4.84  6.302  8.076  10.225];
p = input('p=');
h = input('h=');
x(1)=140;
u = (p-x(1))/h;
dely0=y(2)-y(1);
dely1=y(3)-y(2);
dely2=y(4)-y(3);
dely3=y(5)-y(4);
fprintf('dely0=%0.5f\n dely1=%0.5f\n dely2=%0.5f\n dely3=%0.5f\n ', dely0,dely1,dely2,dely3);
delsqry0=dely1-dely0;
delsqry1=dely2-dely1;
delsqry2=dely3-dely2;
fprintf('delsqry0=%0.5f\n delsqry1=%0.5f\n delsqry2=%0.5f\n', delsqry0,delsqry1,delsqry2);
delcubey0=delsqry1-delsqry0;
delcubey1=delsqry2-delsqry1;
fprintf('delcubey0=%0.5f\n delcubey1=%0.5f\n', delcubey0,delcubey1);
delfoury0=delcubey1-delcubey0;
fprintf('delfoury0=%0.5f\n', delfoury0);
answer= y(1)+u*dely0+u*(u-1)*delsqry0/factorial(2)+u*(u-1)*(u-2)*delcubey0/factorial(3)+u*(u-1)*(u-2)*(u-3)*delfoury0/factorial(4);
fprintf('142=%3.5f',answer);

