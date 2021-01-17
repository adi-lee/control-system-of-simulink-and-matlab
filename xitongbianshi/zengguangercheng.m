clear all
close all
clc
%randn('seed',100)
%v=randn(1,60);
v=normrnd(0,0.5,1,60);
L=60;
y1=1;y2=1;y3=1;y4=0;
for i=1:L
    x1=xor(y3,y4);%���
    x2=y1;
    x3=y2;
    x4=y3;
    y(i)=y4;
    if y(i)>0.5,u(i)=-1;
    else u(i)=1;
    end
    y1=x1;y2=x2;y3=x3;y4=x4;
end
figure(1);
stem(u),grid on

%������С���˱�ʶ����
z(2)=0;z(1)=0;
%��������ʶ�����ĳ�ʼֵ
theat0=[0.001 0.001 0.001 0.001 0.001 0.001 0.001]';
p0=10^4*eye(7,7);%��ʼ״̬
theat=[theat0,zeros(7,59)];%����ʶ��������ĳ�ʼֵ����С
for k=3:60
    z(k)=-1.6*z(k-1)-0.7*z(k-2)+u(k-1)+0.4*u(k-2)+1.1*v(k)+1.4*v(k-1)+0.3*v(k-2);
    h1=[-z(k-1),-z(k-2),u(k-1),u(k-2),v(k),v(k-1),v(k-2)]';
    x=h1'*p0*h1+1;
    x1=inv(x);
    k1=p0*h1*x1;
    d1=z(k)-h1'*theat0;%��Ϣ
    theat1=theat0+k1*d1;%��ʶ����c
    theat0=theat1;%����һ����
    theat(:,k)=theat1;
    p1=p0-k1*k1'*[h1'*p0*h1+1];
    p0=p1;
end
a1=theat(1,:)
a2=theat(2,:)
b1=theat(3,:)
b2=theat(4,:)
c1=theat(5,:)
c2=theat(6,:)
c3=theat(7,:)
i=1:60;
figure(2);
plot(i,z)
figure(3)
plot(i,a1,'r',i,a2,':.',i,b1,'k',i,b2,'y',i,c1,'g',i,c2,'c',i,c3,'m')
title('������������С�����㷨')
legend('a1','a2','b1','b2','c1','c2','c3');
grid on;