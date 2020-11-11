num=8;
den=conv([1 0],conv([1 3],[1 2]));
G=tf(num,den)
nyquist(G,'b');
axis([-3 1 -2 2 ])
hold on
A=0:0.002:1000;
% na=-pi/2./(asin(1./A)+(1./A).*sqrt(1-(1./A).^2));
na=-pi*A/4;
plot(real(na),imag(na),'r');
legend('G(jw)','-1/N(A)')
for w=0.001:0.001:100
    g=8/((1i*w)*(1i*w+3)*(1i*w+2));
    re=real(g);im=imag(g);
    if abs(im)<0.001;break%求Nyquist曲线与负实轴的交点
    end
end
w
re
syms a k
A=-4*re/pi
