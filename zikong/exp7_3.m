% num=2.5;
% num=0.5;
num=1.5;
den=conv([1 0],conv([1 1],[1 1]));
G=tf(num,den)
nyquist(G,'b');
axis([-2 0.5 -2 2 ])
hold on

A=0:0.002:1000;
na=-(A+2)./(A+6);
plot(real(na),imag(na),'r');
legend('G(jw),k=2.5','-1/N(A)')
for w=0.001:0.001:100
    g=1.5/((1i*w)*(1i*w+1)*(1i*w+1));
    re=real(g);im=imag(g);
    if abs(im)<0.001;break;%求Nyquist曲线与负实轴的交点
    end
end
w
A=-(6*re+2)./(re+1)
k1=-1*((1i*w)*(1i*w+1)*(1i*w+1))
k=-1/3*((1i*w)*(1i*w+1)*(1i*w+1))
%rlocfind(G)



% num=[0.5 1.5 2.5];
% den=conv([1 0],conv([1 1],[1 1]));
% for i=1:length(num)
%     G=tf(num(i),den)
% nyquist(G,'b');
% axis([-2 0.5 -2 2 ])
% hold on
% subplot(3,1,i)
% 
% end
