%实验3
%例3-34
%自己先写
A=[4 1 0 0; 0 4 1 0;
   0 0 4 1; 0 0 0 4];
B=[0 0;1 2;0 0;2 1];
C=[1 0 2 0; 2 0 4 2];
D=zeros(2,4);
M=ctrb(A,B)
N=obsv(A,C)
r1=rank(M)
r2=rank(N)
L=size(A)%size函数获取矩阵的行数和列数
if r1==L
    output='系统完全能控'
else
    output='系统不能控'
end
if r2==L
    output='系统完全能观'
else
    output='系统不能观'
end