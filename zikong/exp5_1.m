num=20;den=[1 1 0];G=tf(num,den);%У��ǰϵͳģ��
figure(1);bode(G),grid on
G2=feedback(G,1,-1);
C=dcgain(G2);%��ֵ
[y,t]=step(G2);
n=length(t);
while(y(n)>0.98*C)&&(y(n)<1.02*C)%����ȡ0.02
    n=n-1;
end
settlingtime=t(n)%�������ʱ��
[Gw,Pw,Wcg,Wcp]=margin(G)
Wm=8;[mag1,phase1]=bode(G,Wm),Lwm=20*log10(mag1)
%���ط�ֵ����ǣ�������ֵת��Ϊ�ֱ���λ
a=10^(-Lwm/10),T=1/(Wm*sqrt(a))%��ȡ��ǰ�������
numc=[a*T,1];denc=[T,1];Gc=tf(numc,denc)
[num1,den1]=series(num,den,numc,denc);%��������
G1=tf(num1,den1)
G3=feedback(G1,1,-1);
C1=dcgain(G3);%��ֵ
[y1,t1]=step(G3);
n=length(t1);
while(y1(n)>0.98*C1)&&(y1(n)<1.02*C1)%����ȡ0.02
    n=n-1;
end
settlingtime1=t1(n)%�������ʱ��
[Gw1,Pw1,Wcg1,Wcp1]=margin(num1,den1)
magdb1=20*log10(Gw1)
figure(2);bode(G,'-',G1,'--')
legend('У��ǰ','У����')
title('У��ǰ���Bodeͼ�Ա�')
figure(3);step(G2,'-',G3,'--')
grid on
legend('У��ǰ','У����')
title('У��ǰ��ĵ�λ��Ծ��Ӧ���߶Ա�')

