num=[2 0.2];den=[1 -0.6 -0.01 0.03];
G=tf(num,den,-1)
[z,p,k]=tf2zp(num,den);
sys=zpk(z,p,k,-1)