num=20;den=[1 1 0];G=tf(num,den);%校正前系统模型
figure(1);bode(G),grid on
G2=feedback(G,1,-1);
C=dcgain(G2);%终值
[y,t]=step(G2);
n=length(t);
while(y(n)>0.98*C)&&(y(n)<1.02*C)%误差带取0.02
    n=n-1;
end
settlingtime=t(n)%计算调节时间
[Gw,Pw,Wcg,Wcp]=margin(G)
Wm=8;[mag1,phase1]=bode(G,Wm),Lwm=20*log10(mag1)
%返回幅值与相角，并将幅值转换为分贝单位
a=10^(-Lwm/10),T=1/(Wm*sqrt(a))%求取超前网络参数
numc=[a*T,1];denc=[T,1];Gc=tf(numc,denc)
[num1,den1]=series(num,den,numc,denc);%串联连接
G1=tf(num1,den1)
G3=feedback(G1,1,-1);
C1=dcgain(G3);%终值
[y1,t1]=step(G3);
n=length(t1);
while(y1(n)>0.98*C1)&&(y1(n)<1.02*C1)%误差带取0.02
    n=n-1;
end
settlingtime1=t1(n)%计算调节时间
[Gw1,Pw1,Wcg1,Wcp1]=margin(num1,den1)
magdb1=20*log10(Gw1)
figure(2);bode(G,'-',G1,'--')
legend('校正前','校正后')
title('校正前后的Bode图对比')
figure(3);step(G2,'-',G3,'--')
grid on
legend('校正前','校正后')
title('校正前后的单位阶跃响应曲线对比')

