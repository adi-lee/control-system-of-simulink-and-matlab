num=[1,2,2];
%����kֵ�Ĵ�С����Ӱ�쿪���㼫��ķֲ��������㼫��ͼ�Ļ��ƣ�
%��������Ϊ1������Ҳ�ܱ�����ִ���
den=conv([1,0],conv([1,4],conv([1,6],[1,4,4])));
G=tf(num,den)
figure(1);pzmap(G)  
[p,z]=pzmap(G)
figure(2);rlocus(G)
title('ϵͳ���켣ͼ');%���ظ�����ֻ��ʾ4������
figure(3);rlocus(G)
title('ϵͳ���켣ͼ�ֲ�������ȷ���ٽ���켣����');
axis([-5 5 6 8]),[k2,p2]=rlocfind(G)
%��ȡ�ٽ���켣����,����ѡȡ���η�Χȷ����Χ����С���
%ѡȡҲ��Ҫ����׼��׼�����Զ�⼸��

%axis([-4 -2 -0.5 0.5]),[k1,p1]=rlocfind(G)%��ȡ��������꣬Ҳ�����ƶ����õ�
