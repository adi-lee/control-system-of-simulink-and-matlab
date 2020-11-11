syms z k
F=5*z/(z^2-3*z+2)
f1=iztrans(F,k)%直接求反变换
B=[0 5 0];A=[1 -3 2];
[R,P,K]=residuez(B,A)
F1=5/(1-2*z^(-1));F2=-5/(1-1*z^(-1));
 f2=iztrans(F1,k)+iztrans(F2,k)
 %先部分展开，再查表或者编程得到反变换
 
% f2=iztrans(F1,k)
% f3=iztrans(F2,k)