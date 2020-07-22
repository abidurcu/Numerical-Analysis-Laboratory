clc
clear
A = [1  1  1;1  2  3;1  3  4];
B = [1  6  6];
C = inv(A);
X = B*C;
disp(X);