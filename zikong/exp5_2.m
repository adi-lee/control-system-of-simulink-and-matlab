num=40;den=conv([1,0],conv([0.2,1],[0.0625,1]));G=tf(num,den);%У��ǰϵͳģ��
figure(1);bode(G),grid on
[Gw,Pw,Wcg,Wcp]=margin(G)
magdb=20*log10(Gw)

e=6;r=50;phi=-180+r+e;%У��������ԣ��
w=logspace(-1,1,1000);[mag,phase]=bode(num,den,w);
[i1,ii]=min(abs(phase-phi));%�ҳ���ӽ�phi��ֵ��i1�Ͷ�Ӧ��λ�õ�ii
wc=w(ii)%��У�����ֹƵ��
[mag1,phase1]=bode(G,wc);lwc=20*log10(mag1),b=10^(-lwc/20),
T=10/(b*wc),numc=[b*T 1];denc=[T 1];Gc=tf(numc,denc)
%��⴮���ͺ��b,T

[num1,den1]=series(num,den,numc,denc);
G1=tf(num1,den1)
[Gw1,Pw1,Wcg1,Wcp1]=margin(num1,den1)
magdbl=20*log10(Gw1)
figure(2);bode(G,'-',G1,'--')
legend('У��ǰ','У����')
grid on
title('У��ǰ���Bodeͼ�Ա�')