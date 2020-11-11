n1=[10];d1=[1,1];z1=[];p1=[0,-3];k1=[3];
n3=[1];d3=[1,2];n4=[7,0];d4=[1,6,8];
G1=tf(n1,d1);
[n2,d2]=zp2tf(z1,p1,k1); G3=tf(n3,d3); G4=tf(n4,d4) ;
G2=tf(n2,d2);
G5=feedback(G2,G3,1);G6=G1*G5;G7=feedback(G6,G4,-1)