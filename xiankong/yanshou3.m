clear all
%3.1
disp('习题3.1')
A=[-2 2 -1;0 -2 0;1 -4 0];
B=[0 0; 0 1; 1 0];
C=[1 -1 2;-2 0 1];
D=zeros(2,2);
[num0,den0]=ss2tf(A,B,C,D,1);
[num1,den1]=ss2tf(A,B,C,D,2);
M=ctrb(A,B);
r1=rank(M);
L=size(A);
if r1==L
    disp('该系统完全能控')
else
     disp('该系统不能控，需要进行能控性分解')
    [Ah,Bh ,Ch ,P ,K]=ctrbf(A,B,C)
end




%3.2
disp('习题3.2')
A1=[4 1 0 0;0 4 0 0;
    0 0 4 1;0 0 0 4];
B1=[1 0; 0 1; 1 -1;-2 0];
C1=[1 1 2 1; 1 2 2 0];
D1=zeros(2,2);
[num2,den2]=ss2tf(A1,B1,C1 ,D1 ,1);
N=obsv(A1,C1);
r2=rank(N);
L1=size(A1);
if r2==L1
    disp('该系统完全能观')
else
    disp('该系统不能观，需要分解')
    [Ah1,Bh1 ,Ch1 ,P1 ,K1]=obsvf(A1,B1,C1)
    Ah5=Ah1(2:4,2:4);
    Bh5=Bh1(2:4,1:2);
    Ch5=Ch1(:,2:4);
    Dh5=zeros(3,3);%能观子系统
    [Ah6,Bh6,Ch6,P6,K6]=ctrbf(Ah5,Bh5,Ch5)
    
end



%3.3
disp('习题3.3')
A2=[-4 1 0 0 0 0;
    0 -4 0 0 0 0;
    0 0 3 1 0 0;
    0 0 0 3 0 0;
    0 0 0 0 -1 1;
    0 0 0 0 0 -1];
B2=[1 3; 5 7;4 3;0 0;1 6; 0 0];
C2=[3 1 0 5 0 0;
    1 4 0 2 0 0];
D2=zeros(2,2);
M2=ctrb(A2,B2);
N2=obsv(A2,C2);
r3=rank(M2);
r4=rank(N2);
L2=size(A2)%size函数获取矩阵的行数和列数
if r3==L2
    disp('系统完全能控')
else
   disp('系统不能控，需要进行分解')
     [Ah2,Bh2 ,Ch2 ,P2 ,K2]=ctrbf(A2,B2,C2)
    Ah7=Ah2(2:6,2:6);
    Bh7=Bh2(2:6,1:2);
    Ch7=Ch2(:,2:6);
    Dh7=zeros(4,4);%能控子系统能观性
    [Ah8,Bh8 ,Ch8 ,P8 ,K8]=obsvf(Ah7,Bh7,Ch7)
    Ah9=Ah2(1:2,1:2);
    Bh9=Bh2(1:2,1:2);
    Ch9=Ch2(:,1:2);
    Dh9=zeros(2,2);%不能控子系统能观性
    [Ah10,Bh10 ,Ch10 ,P10 ,K10]=obsvf(Ah9,Bh9,Ch9)
end
% if r4==L2
%     output='系统完全能观'
% else
%     output='系统不能观，需要进行能观性分解'
%     [Ah3,Bh3 ,Ch3 ,P3 ,K3]=obsvf(A2,B2,C2)
% end
