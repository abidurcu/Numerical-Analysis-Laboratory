clc
clear
a=input('a=');
b=input('b=');
for k=1:1:15
    t(k)=k;
    x1(k)=a;
    x2(k)=b;
    c(k)=(x1(k)+x2(k))/2;
    if k>1
        l(k)=((c(k)-c(k-1))/c(k))*100;
        m(k)=abs(l(k));
        if m(k)<=0.001
            break;
          end
end
    f1(k)=x1(k)^2-2*x1(k)-3;
    f3(k)=c(k)^2-2*c(k)-3;
    if f1(k)*f3(k)>0
        a=c(k);
    end
    if f1(k)*f3(k)<0
        b=c(k);
        end
    end
    result=[t' x1' x2' c' f3' m'];
    disp('   iteration      a          b         c         f(x3)      Ea(%)')
    disp(result)
    root=c(k)   

