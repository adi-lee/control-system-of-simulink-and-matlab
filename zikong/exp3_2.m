num=[1,1];
den=conv([1,0],conv([1,-1],[1,4,16]));
G=tf(num,den)
rlocus(G)
title('ϵͳ���켣ͼ');
axis([-5 5 -5 5]);
[k1,p1]=rlocfind(G)
[k2,p2]=rlocfind(G)%����rlocfind������ȡkȡֵ��Χ

%���������д���ˣ����ǲ�̫�����
