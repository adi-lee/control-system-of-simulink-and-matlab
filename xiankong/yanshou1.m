clear all
%1.1
disp('ϰ��1.1')
num0=[1 2];
den0=[1 3 3 1];%ϵͳ��΢�ַ��̶�Ӧ�Ĵ��ݺ���
[A0,B0,C0,D0]=tf2ss(num0,den0)
sys0=ss(A0,B0,C0,D0)


%1.2
disp('ϰ��1.2')
num1=[1 3 1];
den1=[1 2 1];
[A1,B1,C1, D1]=tf2ss(num1,den1)
sys1=ss(A1,B1,C1,D1)



%1.3����,���ǽ���ǶԵ�
num2=[1 1];
den2=[1 7 14 5];
[A2,B2,C2,D2]=tf2ss(num2,den2)
% % [P,Q]=eig(A2)
% % p=inv(P)%P�������
% % A3=P*A2*p
% % B3=p*B2
% % C3=C2*P
%1.3�Ľ�
[P1, J1]=jordan(A2)%����A����������P,J�������A���Ӧ��Լ����
[Ap,Bp,Cp,Dp]=ss2ss(A2,B2,C2,D2,inv(P1))%ʵ��ϵͳ�ķ����Ա任����ΪԼ����׼��



%1.4
disp('ϰ��1.4')
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
% %G5=tf(num5,den5)%��ϵͳ1�Ĵ��ݺ���
% A6=[1 2; 4 3];
% B6=[1 -1;0 1];
% C6=[1 0;0 2];
% D6=zeros(2,2);
% 
% [num6,den6]=ss2tf(A6,B6,C6,D6,1)
% [num6,den6]=ss2tf(A6,B6,C6,D6,2)
% %G6=tf(num6,den6)%��ϵͳ2�Ĵ��ݺ���
% %[num7,den7]=series(num5,den5,num6,den6);
% %G7=tf(num7,den7)%��ϵͳ������Ĵ��ݺ���
% [A7,B7,C7,D7]=series(A5,B5,C5,D5,A6,B6,C6,D6)%��ϵͳ�������״̬�ռ���ʽ
% [num8,den8]=parallel(num5,den5,num6,den6);
% %G8=tf(num8,den8)%��ϵͳ������Ĵ��ݺ���
% [A8,B8,C8,D8]=parallel(A5,B5,C5,D5,A6,B6,C6,D6)%��ϵͳ�������״̬�ռ���ʽ
% %[num9,den9]=feedback(num5,den5,num6,den6);
% %G9=tf(num9,den9)%��ϵͳ���������Ӻ�Ĵ��ݺ���
% [A9,B9,C9,D9]=feedback(A5,B5,C5,D5,A6,B6,C6,D6)%��ϵͳ���������Ӻ��״̬�ռ���ʽ



%1.5
A5=[2 4; 4 2];
B5=[1 -1; -1 1];
C5=[2 0;0 2];
D5=zeros(2,2); 
[num5,den5]=ss2tf(A5,B5,C5,D5,1)%��ϵͳ1�Ĵ��ݺ���
[num6,den6]=ss2tf(A5,B5,C5,D5,2)
A6=[1 2; 4 3];
B6=[1 -1;0 1];
C6=[1 0;0 2];
D6=zeros(2,2);
[num7,den7]=ss2tf(A6,B6,C6,D6,1)%��ϵͳ2�Ĵ��ݺ���
[num8,den8]=ss2tf(A6,B6,C6,D6,2)
sys1=ss(A5,B5,C5,D5)%��ϵͳ1��״̬�ռ���ʽ
sys2=ss(A6,B6,C6,D6)%��ϵͳ2��״̬�ռ���ʽ
% outputs1=[1,2];
% inputs2=[1,2];
sys3=series(sys1,sys2)%,outputs1,inputs2�Ӳ��Ӷ��У�Ĭ��һ����
%[A7,B7,C7,D7]=series(sys1,sys2)%�������̫��
%[num9,den9]=series(num5,den5,num6,den6)
sys4=parallel(sys1,sys2)%����
sys5=feedback(sys1,sys2)%������,����������״̬�ռ���ʽ
%���ݺ�������ôд��,Ҫѧ�����ù�����
[num9,den9]=ss2tf(sys3.A,sys3.B,sys3.C,sys3.D,1)%������Ĵ��ݺ�����
[num10,den10]=ss2tf(sys3.A,sys3.B,sys3.C,sys3.D,2)
[num11,den11]=ss2tf(sys4.A,sys4.B,sys4.C,sys4.D,1)%������Ĵ��ݺ�����
[num12,den12]=ss2tf(sys4.A,sys4.B,sys4.C,sys4.D,2)
[num13,den13]=ss2tf(sys5.A,sys5.B,sys5.C,sys5.D,1)%��������Ĵ��ݺ�����
[num14,den14]=ss2tf(sys5.A,sys5.B,sys5.C,sys5.D,2)