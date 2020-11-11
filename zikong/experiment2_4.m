num=[10];
den=[1,2,10];
sys=tf(num,den)
syms Wn kosi tinmeopeak
Wn=sqrt(10)%求无阻尼振荡频率
kosi=2/(2*Wn)%求阻尼比
[z,p,k]=tf2zp(num,den)%求闭环极点
step(num,den)
grid on
[y,t]=step(sys);        
[Y,peak]=max(y) %峰值
timeopeak=t(peak)%求取峰值时间遇到“索引超出矩阵维度”的问题
Css=dcgain(sys);overshoot=100*(Y-Css)/Css%超调量
i=length(t);
while(y(i)>0.98*Css)&&(y(i)<1.02*Css)
    i=i-1;
end
settlingtime=t(i)
%真的奇怪哈，第10行我如果写成[y,t]=step(num,den)那么在第十二行
%会出现索引超出维度的问题，同样类似的问题也出现在求调节时间，
%而将step()中表示为一个就可以了