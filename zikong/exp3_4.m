num=1;den=conv([1,0],conv([1,0],conv([1,2],[1,5])));
G=tf(num,den);
figure(1);rlocus(G)
title('原系统根轨迹图');
num1=[1,0.5];
G1=tf(num1,den);
figure(2);rlocus(G1)
title('系统增加z=-0.5零点后的根轨迹图');
axis([-10 5 -5 5]);%为了能看清楚，加个坐标轴限制
G2=tf([1,0.1],den);
G3=tf([1,0.01],den);
G4=tf([1,1],den);
figure(3);rlocus(G1,'r',G2,'g',G3,'b',G4,'y')
legend('z=-0.5','z=-0.1','z=-0.01','z=-1')
 axis([-10 5 -5 5]);
 title('系统增加几个零点后的根轨迹图')
%另一种方案
k=[0.1 0.01,1];
for i=1:length(k)
    num2=[1,k(i)];
    figure(3),rlocus(G1)
  rlocus(num2,den)
  hold on 
  axis([-10 5 -5 5]);
  title('系统增加几个零点后的根轨迹图')
end

