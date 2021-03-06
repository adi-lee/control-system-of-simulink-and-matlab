image=imread('lena')
subplot(2,2,1);
imshow('lena')
title('原始');
a1=[a(1:90000,1:1);a(1:90000,2:2);a(1:82144,3:3)];%从混沌系统中提取数据
a2=reshape(a1,[512,512]);
a3=a2*91;
a3=uint8(a3);
a4=[a(1:90000,3:3);a(1:90000,1:1);a(1:82144,2:2)];
a6=reshape(a4,[512,512]);
a7=a6*91;
a7=uint8(a7);
a10=[a(1:90000,2:2);a(1:90000,3:3);a(1:82144,1:1)];
a11=reshape(a10,[512,512]);
a12=a11*91;
a12=uint8(a12);
a14=a12';
a15=a7';
a16=a3';
jia_a=bitxor(a3,a7);
jia_b=bitxor(jia_a,a12);
jia_c=bitxor(a14,jia_b);
jia_d=bitxor(a15,jia_c);
jia_e=bitxor(a16,jia_d);
subplot(2,2,2);
imshow(jia_e,[])
title('加密key');
jia_f=bitxor(image,jia_e);
subplot(2,2,3);
imshow(jia_f,[])
title('加密后');
% %解密
jie_mi=bitxor(jia_f,jia_e);
subplot(2,2,4);
imshow(jie_mi,[]);
title('解密');

