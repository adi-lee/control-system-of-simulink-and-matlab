num1=1;den1=[1 1];
num2=2;den2=[1 2];
T=0.2;
G1=tf(num1,den1);G2=tf(num2,den2);
Gd1=c2d(G1,T,'impluse')
Gd2=c2d(G2,T,'impluse')
Gd3=series(Gd1,Gd2)%图一所示有采样开关的情况
G3=series(G1,G2);Gd4=c2d(G3,T,'impluse')%t图二所示无采样开关的情况