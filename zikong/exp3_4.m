num=1;den=conv([1,0],conv([1,0],conv([1,2],[1,5])));
G=tf(num,den);
figure(1);rlocus(G)
title('ԭϵͳ���켣ͼ');
num1=[1,0.5];
G1=tf(num1,den);
figure(2);rlocus(G1)
title('ϵͳ����z=-0.5����ĸ��켣ͼ');
axis([-10 5 -5 5]);%Ϊ���ܿ�������Ӹ�����������
G2=tf([1,0.1],den);
G3=tf([1,0.01],den);
G4=tf([1,1],den);
figure(3);rlocus(G1,'r',G2,'g',G3,'b',G4,'y')
legend('z=-0.5','z=-0.1','z=-0.01','z=-1')
 axis([-10 5 -5 5]);
 title('ϵͳ���Ӽ�������ĸ��켣ͼ')
%��һ�ַ���
k=[0.1 0.01,1];
for i=1:length(k)
    num2=[1,k(i)];
    figure(3),rlocus(G1)
  rlocus(num2,den)
  hold on 
  axis([-10 5 -5 5]);
  title('ϵͳ���Ӽ�������ĸ��켣ͼ')
end

