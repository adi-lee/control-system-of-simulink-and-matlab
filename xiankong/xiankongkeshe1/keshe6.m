    A = [0 1 0 0;0 0 -1 0;0 0 0 1;0 0 22 0];
B = [0;1;0;-2];
C = [1 0 0 0];
D = [0];
Qc=ctrb(A,B);   
P=[-1,-2,-1+1i,-1-1i];
K=acker(A,B,P)
P=poly(A-B*K),V=roots(P)
P=[-10,-10,-10,-10];
    A1=A';
    B1=C';
    K=acker(A1,B1,P);
    G=K'
    AGC=A-G*C
syms k wn;%计算阻尼比和频率
k=solve(exp(-pi*k/sqrt(1-k^2))==0.1,k)
k=double(k);
e=max(k)
wn=solve(3.5/(e*wn)==2,wn);
wn=double(wn)
[z,p,k]=tf2zp([1],[1/(wn*wn) 2*max(k) 1]);
sys1=zpk(z,p,k)
p%主导极点
z=[];p1=[p(1),p(2),-15,-15,-15];k=1;
[num,den]=zp2tf(z,p1,k);
%[A zeros(4,1);-C 0]-[B;0][K1 -K2]
A1=[A zeros(4,1);-C 0];
B1=[B;0];   
K=acker(A1,B1,p1)
K1=K(1:4)
K2=-K(5)
Qc=ctrb(A,B);
P=[-5,-5,-1+j,-1-j];
K=acker(A,B,P)%状态反馈+输出反馈（线性）



