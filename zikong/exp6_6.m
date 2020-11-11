T=1;num=2;den=conv([1 0],[1 1]);
sys=tf(num,den);
sysd=c2d(sys,T,'zoh')%加上零阶保持器，并离散化
sysbd=feedback(sysd,1);
[dnum,dden]=tfdata(sysbd,'v')
%加上'v'，可以让输出的值由元胞数组度改为数组直接输出：
pd=roots(dden)%求取闭环极点
figure(1);zplane(dnum,dden)%绘制零极点图
title('零极点分布图')
pdz=abs(pd);
flag1=0;flag2=0;
for i=1:length(pd)
if roundn(pdz(i),-3)>1
    flag1=1;
end
if roundn(pdz(i),-3)==1
    flag1=1;
end
end
if flag1==1 
    disp('Discrete system is unstable');
else if flag2==1 
        disp('Discrete system is stable');
    else disp('Discere system is stable');
    end
end%判断系统是否稳定
figure(2);dstep(dnum,dden)%绘制单位阶跃曲线
title('单位阶跃响应曲线')

