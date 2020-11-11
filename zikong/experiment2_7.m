num=[1,2,3,2,1];den=[1,2,6,7,3,1];
G=tf(num,den);pzmap(G)%绘制连续系统的零极点图
pole=roots(den)%由闭环特征方程计算闭环极点
[z,p,k]=tf2zp(num,den)%利用tf2zp求出闭环系统零极点
