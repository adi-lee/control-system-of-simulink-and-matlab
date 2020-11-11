clear all

%2.1
disp('ϰ��2.1')
A1=[0 1 0; 0 0 1;2 -5 4];
B1=[1;0;0];
C1=[1 0 0]; 
D1=0;
X1=[1;1;1];
X2=[1;2;3];%�趨��ͬ�ĳ�ʼ״̬
syms t1
eAt=expm(A1*t1);
eAt=simplify(eAt)%ϵͳ��״̬ת�ƾ���
figure(1);%��������Ӧ����
initial(A1,B1,C1,D1,X1,'black')%��ʼ״̬1����Ӧ����
hold on
initial(A1,B1,C1,D1,X2,'red')%��ʼ״̬2����Ӧ����
grid on
figure(2);
step(A1,B1,C1,D1,X1)
% hold on
% step(A1,B1,C1,D1,X2)
grid on
title("��ϵͳ�Ľ�Ծ��Ӧ����")



%2.2
disp('ϰ��2.2')
syms t
A2=[1 -2 2;-2 -2 4;2 4 -2];
B2=[1 0;0 1; 1 1];
C2=[1 2 1;0 -1 2];
D2=zeros(2,2);
X3=[1;2;3];
figure(3);
initial(A2,B2,C2,D2,X3,'red')%��������Ӧ��Ҫע�������ʼ״̬
grid on
figure(4);
step(A2,B2,C2,D2)%�����뵥�������µĽ�Ծ��Ӧ
grid on
t=0:0.01:2;
LT=length(t);
u1=ones(1,LT);
u2=ones(1,LT);
u=[u1;u2];
lsim(A2,B2,C2,D2,u,t,X3)%��ͬ�����µ������Ӧ
grid on

%2.3
disp('ϰ��2.3')
A3=[0 1 0; 0 0 1;2 -5 4];
B3=[1;0;0];
C3=[1 0 0];
D3=0;
syms T t3
T=0.1;
[G,H]=c2dm(A3,B3,T,'zoh')
sys3=ss(G,H,C3,D3)%ϵͳ��ɢ����Ŀռ�״̬���ʽ
% eAt3=expm(G*t3);
% eAt3=simplify(eAt3)%ϵͳ��״̬ת�ƾ���
%������������ʱ���е㳤����ע��


% [yd,x,n]=dstep(G,H,C3,D3);
% for k=1:n
%     plot([k-1,k-1],[0,yd(k),'k'])
%     hold on
% end
% e=1-yd;
% for k=1:n
%     for j=1:100
%         u(j+(k-1)*100)=e(k);
%     end
% end
% t=(0:0.1:n-0.01)*T;
% [yc]=lsim()







