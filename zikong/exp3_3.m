num=1;den=[1 4 2 9];
G=tf(num,den)
figure(1);rlocus(G)
title('Root Locus of ��3-3');
k=1:0.1:10;
figure(2);rlocus(G,k)
title('Root Locus of ��3-3,1<k<10');

%haha,���������ôдȡֵ��Χ�ˣ��һ�д��1<k<10