num=1;den=[1 4 2 9];
G=tf(num,den)
figure(1);rlocus(G)
title('Root Locus of 题3-3');
k=1:0.1:10;
figure(2);rlocus(G,k)
title('Root Locus of 题3-3,1<k<10');

%haha,起初忘了怎么写取值范围了，我还写成1<k<10