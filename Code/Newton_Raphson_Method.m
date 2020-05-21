clc
clear
a=input('a=');
for k=1:1:15
  t(k)=k;
  x1(k)=a;
  f1(k)=x1(k)^3-6*x1(k)+4;
  f2(k)=3*x1(k)^2-6;
  c(k)=x1(k)-(f1(k)/f2(k));
  f3(k)=c(k)^3-6*c(k)+4;
  if k>1
    l(k)=((c(k)-c(k-1))/c(k))*100;
    m(k)=abs(l(k));
    if m(k)<=0.001
      break;
    end
  end
end
result=[t' x1' f1' f2' c' f3' m'];
disp('iteration  a  f1  f2  c  f(x3)  Ea(%)')
disp(result)
root=c(k)
