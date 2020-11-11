T=[0.1 0.3 0.763 1 1.5 1.8];
num=3;den=conv([1 0],[1 1]);
sys=tf(num,den);
for n=1:length(T)
sysd=c2d(sys,T(n),'zoh');%加上零阶保持器，并离散化
sysbd=feedback(sysd,1);
[dnum,dden]=tfdata(sysbd,'v');p=[1 2 3];
    subplot(3, 2,n)
    zplane(dnum,dden)%绘制零极点图
 axis([-1.5 1.5 -1.5 1.5])
end
