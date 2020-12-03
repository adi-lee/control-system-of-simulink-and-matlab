%利用了混沌的主从同步
image=imread('lena')
subplot(2,2,1);
imshow('lena')
title('原始');
a1=[a(10001:100000,1:1);a(10001:100000,2:2);a(10001:92144,3:3)];%从混沌主系统中提取数据
a2=reshape(a1,[512,512]);
a3=a2*91;
a3=uint8(a3);
a4=[a(10001:100000,3:3);a(10001:100000,1:1);a(10001:92144,2:2)];
a6=reshape(a4,[512,512]);
a7=a6*91;
a7=uint8(a7);
a10=[a(10001:100000,2:2);a(10001:100000,3:3);a(10001:92144,1:1)];
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
b1=[b(10001:100000,1:1);b(10001:100000,2:2);b(10001:92144,3:3)];%从混沌从系统中提取数据
b2=reshape(b1,[512,512]);
b3=b2*91;
b3=uint8(b3);
b4=[b(10001:100000,3:3);b(10001:100000,1:1);b(10001:92144,2:2)];
b6=reshape(b4,[512,512]);
b7=b6*91;
b7=uint8(b7);
b10=[b(10001:100000,2:2);b(10001:100000,3:3);b(10001:92144,1:1)];
b11=reshape(b10,[512,512]);
b12=b11*91;
b12=uint8(b12);
b14=b12';
b15=b7';
b16=b3';
jiab_a=bitxor(b3,b7);
jiab_b=bitxor(jiab_a,b12);
jiab_c=bitxor(b14,jiab_b);
jiab_d=bitxor(b15,jiab_c);
jiab_e=bitxor(b16,jiab_d);
jie_mi=bitxor(jia_f,jiab_e);
subplot(2,2,4);
imshow(jie_mi,[]);
title('解密');

