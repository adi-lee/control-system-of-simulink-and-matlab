num=[1 3 1];%��1
den=[1 2 4 6];
G1=tf(num,den)
z=[3];%��2
p=[1 -2 -4];
k=7;
G2=zpk(z,p,k)
A=[0 1; -2 -3];%����
B=[1 0;1 1];
C=[1 0; 1 1; 0 2];
D=[0 0;1 0;0 1];
G3=ss(A,B,C,D)
A1=[0 1 0; 0 0 1; -4 -8 -5];%��5
B1=[0; 0 ;1];
C1=[1 0 0];
D1=0;
A2=[0 1 ;-2 -3];
B2=[0;1];
C2=[1 0];
D2=0;
[A3,B3,C3,D3]=feedback(A1,B1,C1,D1,A2,B2,C2,D2)%signĬ��-1
num1=[1 3 1];%��6
den1=[1 2 4 6];
[A4,B4,C4,D4]=tf2ss(num1,den1)
A5=[2 -1 -1; 0 -1 0; 0 2 1];%��8
lambda=eig(A5)
[P1,Q]=eig(A5)%eig���������м���������������Ĺ��ܣ��޷������ظ�
A6=[0 1 0;0 0 1; 8 -12 6];%��9
[P2,J]=jordan(A6)%P�Ǿ���A����������������ɵľ���
%��ע��ss2ss������Ҫ�����飬�˽�����˼