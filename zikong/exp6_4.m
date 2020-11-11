num=5;den=conv([1 1],[1 2]);T=0.2;
G=tf(num,den),Gd=c2d(G,T,'zoh')