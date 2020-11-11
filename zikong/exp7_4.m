num=10;
den=conv([1 0],conv([1 1],[1 2]));
G=tf(num,den)
nyquist(G,'b');
axis([-3 1 -2 2 ])
hold on
A=1:0.002:1000;
na=-pi/2./(asin(1./A)+(1./A).*sqrt(1-(1./A).^2));

plot(real(na),imag(na),'r');
legend('G(jw)','-1/N(A)')
for w=0.001:0.001:100
    g=10/((1i*w)*(1i*w+1)*(1i*w+2));
    re=real(g);im=imag(g);
    if abs(im)<0.001;break%求Nyquist曲线与负实轴的交点
    end
end
w
syms a k
a=solve(re==-pi/2./(asin(1./a)+(1./a).*sqrt(1-(1./a).^2)),a)
k=-1*((1i*w)*(1i*w+1)*(1i*w+2))
