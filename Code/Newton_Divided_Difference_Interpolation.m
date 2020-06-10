clc
clear
x = [5  7  11  13  21];
y = [150  392  1452  2366  9702];

p = input('p=');

dely0 = (y(1)-y(2))/(x(1)-x(2));
dely1 = (y(2)-y(3))/(x(2)-x(3));
dely2 = (y(3)-y(4))/(x(3)-x(4));
dely3 = (y(4)-y(5))/(x(4)-x(5));
fprintf('dely0=%d\n dely1=%d\n dely2=%d\n dely3=%d\n',dely0,dely1,dely2,dely3);

delsqry0 = (dely0-dely1)/(x(1)-x(3));
delsqry1 = (dely1-dely2)/(x(2)-x(4));
delsqry2 = (dely2-dely3)/(x(3)-x(5));
fprintf('delsqry0=%d\n delsqry1=%d\n delsqry2=%d\n',delsqry0,delsqry1,delsqry2);

delcubey0 = (delsqry0-delsqry1)/(x(1)-x(4));
delcubey1 = (delsqry1-delsqry2)/(x(2)-x(5));
fprintf('delcubey0=%d\n delcubey1=%d\n ',delcubey0,delcubey1);

delfoury0 = (delcubey0-delcubey1)/(x(1)-x(5));
fprintf('delfoury0=%d\n ',delfoury0);

answer = y(1)+(p-x(1))*dely0+(p-x(1))*(p-x(2))*delsqry0+(p-x(1))*(p-x(2))*(p-x(3))*delcubey0+(p-x(1))*(p-x(2))*(p-x(3))*(p-x(4))*delfoury0;
fprintf('F(x)=%d',answer);