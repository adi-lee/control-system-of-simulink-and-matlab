T=1;num=2;den=conv([1 0],[1 1]);
sys=tf(num,den);
sysd=c2d(sys,T,'zoh')%������ױ�����������ɢ��
sysbd=feedback(sysd,1);
[dnum,dden]=tfdata(sysbd,'v')
%����'v'�������������ֵ��Ԫ������ȸ�Ϊ����ֱ�������
pd=roots(dden)%��ȡ�ջ�����
figure(1);zplane(dnum,dden)%�����㼫��ͼ
title('�㼫��ֲ�ͼ')
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
end%�ж�ϵͳ�Ƿ��ȶ�
figure(2);dstep(dnum,dden)%���Ƶ�λ��Ծ����
title('��λ��Ծ��Ӧ����')

