num1=16;den1=[1,4.8 16];
figure(1);bode(num1,den1)
title('Bode of Diagram G(s)=16/((S^2)+4.8*s+16)')
grid on
num2=[9,9*0.2,9];den2=conv([1,0],[1,1.2,9]);
figure(2);bode(num2,den2)
title('Bode Diagram of G(s)=9*(S^2+0.2*s+1)/(s*(S^2+1.2*S+9))')
grid on
