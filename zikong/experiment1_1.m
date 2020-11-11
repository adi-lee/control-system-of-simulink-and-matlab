num=[7 14];den=[1,9,23,15];
sys1=tf(num,den)
[z,p,k]=tf2zp(num,den);
sys2=zpk(z,p,k)

z=[-3;-0.5];p=[-1,-2,-5];k=[10];
sys3=zpk(z,p,k),
[num,den]=zp2tf(z,p,k);
printsys(num,den)

n1=[2,3];d1=[5,3,1];G1=tf(n1,d1)
n2=[10];d2=[2,1];G2=tf(n2,d2)
G3=G1*G2
G4=G1+G2
G5=feedback(G1,G2,-1)
G6=feedback(G1,G2,1)