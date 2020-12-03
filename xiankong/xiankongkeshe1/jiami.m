
image=imread('lena')
%figure(1);
subplot(1,3,1);
imshow('lena')
title('原始');
% imageR=image(:,:,1)
% imageG=image(:,:,2)
% imageB=image(:,:,3)
% imshow(imageR)
% figure(2);
% imshow(imageG)
% figure(3);
% imshow(imageB)%三种基色
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
% mi_a=bitxor(a3,image);
% mi_b=bitxor(a7,mi_a);
% mi_c=bitxor(a12,mi_b);
% a14=a12'
% a15=a7'
% a16=a3'
% mi_d=bitxor(a14,mi_c);
% mi_e=bitxor(a15,mi_d);
% mi_f=bitxor(a16,mi_e);
% %figure(2);
% subplot(1,3,2);
% imshow(mi_f,[]);%加密完成
% title('加密');
% %解密
% jie_a=bitxor(a16,mi_f);
% jie_b=bitxor(a15,jie_a);
% jie_c=bitxor(a14,jie_b);
% jie_d=bitxor(a12,jie_c);
% jie_e=bitxor(a7,jie_d);
% jie_f=bitxor(a3,jie_e);
% %figure(3);
% subplot(1,3,3);
% imshow(jie_f,[]);
% title('解密');
% 
