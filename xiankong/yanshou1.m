clear all
%1.1
disp('习题1.1')
num0=[1 2];
den0=[1 3 3 1];%系统的微分方程对应的传递函数
[A0,B0,C0,D0]=tf2ss(num0,den0)
sys0=ss(A0,B0,C0,D0)


%1.2
disp('习题1.2')
num1=[1 3 1];
den1=[1 2 1];
[A1,B1,C1, D1]=tf2ss(num1,den1)
sys1=ss(A1,B1,C1,D1)



%1.3不好,但是结果是对的
num2=[1 1];
den2=[1 7 14 5];
[A2,B2,C2,D2]=tf2ss(num2,den2)
% % [P,Q]=eig(A2)
% % p=inv(P)%P的逆矩阵
% % A3=P*A2*p
% % B3=p*B2
% % C3=C2*P
%1.3改进
[P1, J1]=jordan(A2)%计算A的特征向量P,J是与矩阵A相对应的约当阵
[Ap,Bp,Cp,Dp]=ss2ss(A2,B2,C2,D2,inv(P1))%实现系统的非线性变换，化为约旦标准型



%1.4
disp('习题1.4')
A4=[0 1 0 0;-1 -1 1 1;
    1 0 -3 0;-50 0 0 -2];
B4=[0; 0; 0;10];
C4=[1 0 0 0];
D4=0;
[num4,den4]=ss2tf(A4,B4,C4,D4);
G4=tf(num4,den4)



% %1.5
% A5=[2 4; 4 2];
% B5=[1 -1; -1 1];
% C5=[2 0;0 2];
% D5=zeros(2,2); 
% [num5,den5]=ss2tf(A5,B5,C5,D5,1)
% [num9,den9]=ss2tf(A5,B5,C5,D5,2)
% %G5=tf(num5,den5)%子系统1的传递函数
% A6=[1 2; 4 3];
% B6=[1 -1;0 1];
% C6=[1 0;0 2];
% D6=zeros(2,2);
% 
% [num6,den6]=ss2tf(A6,B6,C6,D6,1)
% [num6,den6]=ss2tf(A6,B6,C6,D6,2)
% %G6=tf(num6,den6)%子系统2的传递函数
% %[num7,den7]=series(num5,den5,num6,den6);
% %G7=tf(num7,den7)%两系统串联后的传递函数
% [A7,B7,C7,D7]=series(A5,B5,C5,D5,A6,B6,C6,D6)%两系统串联后的状态空间表达式
% [num8,den8]=parallel(num5,den5,num6,den6);
% %G8=tf(num8,den8)%两系统并联后的传递函数
% [A8,B8,C8,D8]=parallel(A5,B5,C5,D5,A6,B6,C6,D6)%两系统并联后的状态空间表达式
% %[num9,den9]=feedback(num5,den5,num6,den6);
% %G9=tf(num9,den9)%两系统负反馈连接后的传递函数
% [A9,B9,C9,D9]=feedback(A5,B5,C5,D5,A6,B6,C6,D6)%两系统负反馈连接后的状态空间表达式



%1.5
A5=[2 4; 4 2];
B5=[1 -1; -1 1];
C5=[2 0;0 2];
D5=zeros(2,2); 
[num5,den5]=ss2tf(A5,B5,C5,D5,1)%子系统1的传递函数
[num6,den6]=ss2tf(A5,B5,C5,D5,2)
A6=[1 2; 4 3];
B6=[1 -1;0 1];
C6=[1 0;0 2];
D6=zeros(2,2);
[num7,den7]=ss2tf(A6,B6,C6,D6,1)%子系统2的传递函数
[num8,den8]=ss2tf(A6,B6,C6,D6,2)
sys1=ss(A5,B5,C5,D5)%子系统1的状态空间表达式
sys2=ss(A6,B6,C6,D6)%子系统2的状态空间表达式
% outputs1=[1,2];
% inputs2=[1,2];
sys3=series(sys1,sys2)%,outputs1,inputs2加不加都行，默认一样的
%[A7,B7,C7,D7]=series(sys1,sys2)%输出参数太多
%[num9,den9]=series(num5,den5,num6,den6)
sys4=parallel(sys1,sys2)%并联
sys5=feedback(sys1,sys2)%负反馈,以上三个是状态空间表达式
%传递函数阵怎么写啊,要学会利用工作区
[num9,den9]=ss2tf(sys3.A,sys3.B,sys3.C,sys3.D,1)%串联后的传递函数阵
[num10,den10]=ss2tf(sys3.A,sys3.B,sys3.C,sys3.D,2)
[num11,den11]=ss2tf(sys4.A,sys4.B,sys4.C,sys4.D,1)%并联后的传递函数阵
[num12,den12]=ss2tf(sys4.A,sys4.B,sys4.C,sys4.D,2)
[num13,den13]=ss2tf(sys5.A,sys5.B,sys5.C,sys5.D,1)%负反馈后的传递函数阵
[num14,den14]=ss2tf(sys5.A,sys5.B,sys5.C,sys5.D,2)