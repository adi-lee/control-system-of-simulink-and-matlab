A1=[0 1 0 0;0 0 -1 0;
    0 0 0 1;0 0 22 0];
B1=[0;1;0;-2];
C1=[1 0 0 0];
D1=0;
ps=[-1+i,-1-i,-5,-6];
K1=acker(A1,B1,ps)
lambda1=eig(A1-B1*K1)%状态反馈
Larmda=eig(A1)
R=find(real(Larmda)>0)
R1=length(R);
if R1==0
    disp('该系统是稳定的')
else
    disp('该系统是不稳定的')
end