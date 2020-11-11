%4.1
A1=[1 2 4;1 1 1;0 2 1];
P1=poly(A1)%用特征值判断系统稳定性
V1=roots(P1)

A2=[0 1 0 0;0 0 1 0;0 0 0 1;0 -1 -3 -3];
P2=poly(A2)%用特征值判断系统稳定性
V2=roots(P2)
%有时间再尝试使用多种方法



%4.2
syms x1 x2 x3
A3=[1 0 -1;0 1 0;0 0 2];
X=[x1;x2;x3];
Q3=[1 0 0;0 1 0;0 0 1];%选定正定矩阵Q
if det(A3)~=0
    P3=lyap(A3,Q3)   
    det1=det(P3(1,1))%德尔塔1
    det2=det(P3(2,2))%德尔塔2
    detp=det(P3)      %3
end
disp('李雅普诺夫函数：')
V=X'*P3*X%李雅普诺夫函数
if det1>0
    if det2>0
        if detp>0
            output='该系统是稳定的'
        else
            output='该系统是不稳定的'
        end
    else
        output='该系统是不稳定的'
    end
else 
    output='该系统是不稳定的'
end

