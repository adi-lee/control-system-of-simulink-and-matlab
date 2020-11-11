% G=tf(1,[1 1]);
% G.ioDelay=0.8;
% f=inline('0.8*w+atan(w)-pi');
% w=fsolve(f,0,optimset('fsolve'))
% K=sqrt(1+w^2)
% nyquist(K*G)   

G=tf(1,[1,1],'iodelay',0.8);%œ»¡Ók=1
eq=inline('0.8*w+atan(w)-pi');
Wc=fsolve(eq,0)
k=sqrt(1+Wc^2)
G1=k*G;
 nyquist(G1)