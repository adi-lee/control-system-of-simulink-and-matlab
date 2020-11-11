num=8;den=conv([1 0],[1 1]);
G0=tf(num,den);
G=feedback(G0,1,-1)%校正前闭环传递函数
wn=sqrt(num),zeta=den(2)/(2*wn)%计算阻尼比和自然频率
C=dcgain(G);%终值
[y,t]=step(G);[Y,k]=max(y);
timetopeak=t(k),overshoot=100*(Y-C)/C%计算峰值时间和超调量
n=1;
while y(n)<C
    n=n+1;
end
risetime=t(n)%计算上升时间
n=length(t);
while(y(n)>0.98*C)&&(y(n)<1.02*C)
    n=n-1;
end
settlingtime=t(n)%计算调节时间

overshoot1=0.05;r=log(1/overshoot1);
zetat=r/sqrt(pi^2+r^2)
Kt=(zetat-zeta)*2/wn
den1=[1 2*zetat*wn 8];
G1=tf(num,den1),C1=dcgain(G1);[y1,t1]=step(G1);[Y1,k1]=max(y1)
timetopeak1=t1(k1),overshoot1=100*(Y1-C1)/C1%计算峰值时间和超调量
n=1;
while y1(n)<C1
    n=n+1;
end
risetime1=t1(n)%计算上升时间
n=length(t1);
while(y1(n)>0.98*C1)&&(y1(n)<1.02*C1)%误差带取0.02
    n=n-1;
end
settlingtime1=t1(n)%计算调节时间

step(G,'-',G1,'--')
legend('校正前','校正后')
title('校正前后的单位阶跃响应曲线对比')
grid on