num=[10];
den=[1,2,10];
sys=tf(num,den)
syms Wn kosi tinmeopeak
Wn=sqrt(10)%����������Ƶ��
kosi=2/(2*Wn)%�������
[z,p,k]=tf2zp(num,den)%��ջ�����
step(num,den)
grid on
[y,t]=step(sys);        
[Y,peak]=max(y) %��ֵ
timeopeak=t(peak)%��ȡ��ֵʱ��������������������ά�ȡ�������
Css=dcgain(sys);overshoot=100*(Y-Css)/Css%������
i=length(t);
while(y(i)>0.98*Css)&&(y(i)<1.02*Css)
    i=i-1;
end
settlingtime=t(i)
%�����ֹ�����10�������д��[y,t]=step(num,den)��ô�ڵ�ʮ����
%�������������ά�ȵ����⣬ͬ�����Ƶ�����Ҳ�����������ʱ�䣬
%����step()�б�ʾΪһ���Ϳ�����