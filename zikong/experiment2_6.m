num=[16.41,16.41*1.95];
den=[1,12,38,52,32];
[z,p,k]=tf2zp(num,den);sys=zpk(z,p,k)%转换为零极点增益模型，分析主导极点
G=tf(num,den);
num1=16.41/(8*2*2)*1.95;
den1=[0.5,1,1];%将传递函数化为典型环节形式,去除偶极子并降阶
G1=tf(num1,den1)
t=0:0.1:10;
step(G,'-',G1,'--',t)%画出二者的单位阶跃响应曲线
legend('原系统','降阶后系统');
grid on，
xlabel('time/sec'),ylabel('response');

