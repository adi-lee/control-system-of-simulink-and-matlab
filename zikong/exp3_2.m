num=[1,1];
den=conv([1,0],conv([1,-1],[1,4,16]));
G=tf(num,den)
rlocus(G)
title('系统根轨迹图');
axis([-5 5 -5 5]);
[k1,p1]=rlocfind(G)
[k2,p2]=rlocfind(G)%利用rlocfind函数求取k取值范围

%到这里代码写完了，但是不太会分析
