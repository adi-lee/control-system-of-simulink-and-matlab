num=[1];den=[0.2,1];t=0:0.1:4;
step(num,den,t),grid on,
xlabel('t/s'),ylabel('c(t)')
hold on
title('��λ��Ծ��Ӧ����')
num=[1];den=[0.2,1,0];t=0:0.1:4;
step(num,den,t),grid on,
xlabel('t/s'),ylabel('c(t)')
 hold on
title('��λб����Ӧ����')
num=[1];den=[0.2,1,0,0];t=0:0.1:4;
step(num,den,t),grid on,
xlabel('t/s'),ylabel('c(t)')
hold on
title('��λ���ٶ���Ӧ����')
num1=[1];den1=[0.2,1];G1=tf(num1,den1);
num2=[1];den2=[0.2,1,0];G2=tf(num2,den2);
num3=[1];den3=[0.2,1,0,0];G3=tf(num3,den3);
t=0:0.1:4;
step(G1,'r',G2,'g',G3,'b',t)
grid on
legend('��λ��Ծ��Ӧ','��λб����Ӧ','��λ���ٶ���Ӧ')