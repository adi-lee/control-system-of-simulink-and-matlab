%实验2的示例练习
%例1
syms s1 t1
A1=[-3 1; 1 -3];
FS=(inv(s1*eye(2)-A1))%eye(2)为2阶单位矩阵，FS(s1*I-A1)^-1
eAt=ilaplace(FS,s1,t1)
eAt1=simplify(eAt)%化简符号计算结果表达式
%例1法2
syms t1
eAt2=expm(A1*t1)
eAt2=simplify(eAt2)

%例4
A2=[-3 1;1 -3];
B2=[1 0;0 1];
C2=[1 0;0 1];
D2=zeros(2,2);
X0=[1;1];
step(A2,B2,C2,D2,X0)
grid
title("系统的阶跃响应")