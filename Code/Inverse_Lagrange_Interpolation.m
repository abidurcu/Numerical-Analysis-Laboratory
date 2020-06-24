clc
clear
x = [0.4  0.6  0.8];
y = [0.3683  0.332  0.2997];
p=input('p=');
ans1 = ((p-y(2))*(p-y(3))*x(1))/((y(1)-y(2))*(y(1)-y(3)));
ans2 = ((p-y(1))*(p-y(3))*x(2))/((y(2)-y(1))*(y(2)-y(3)));
ans3 = ((p-y(1))*(p-y(2))*x(3))/((y(3)-y(1))*(y(3)-y(2)));
answer=ans1+ans2+ans3;
disp(answer)
#fprintf('answer=%f',answer);