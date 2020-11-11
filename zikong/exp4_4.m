num=5;
den=conv([1,0],conv([1,1],[0.1,1]));
bode(num,den)
grid on
title ('Bode Diagram of G(s)=5/(s*(s+1)(0.1s+1))')
[Gm,Pm,Wcg,Wcp]=margin(num,den)
magdb=20*log10(Gm)