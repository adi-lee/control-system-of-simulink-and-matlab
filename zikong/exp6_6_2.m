k=[0.5 1 2 2.393 3 3.5];
T=1;den=conv([1 0],[1 1]);
for n=1:length(k)
    num=k(n);
sys=tf(num,den);
sysd=c2d(sys,T,'zoh');%������ױ�����������ɢ��
sysbd=feedback(sysd,1);
[dnum,dden]=tfdata(sysbd,'v');p=[1 2 3];
    subplot(3, 2,n)
    zplane(dnum,dden)%�����㼫��ͼ
 axis([-1.5 1.5 -1.5 1.5])
end

% ����'v'�������������ֵ��Ԫ������ȸ�Ϊ����ֱ�������
% if n>3
%     subplot(3,2,p(n-3))
% % figure(2*i-1);
% zplane(dnum,dden)%�����㼫��ͼ
% else
% figure(2*i);dstep(dnum,dden)%���Ƶ�λ��Ծ����
% figure(1);zplane(dnum,dden)%�����㼫��ͼ
% axis([-1.5 1.5 -1.5 1.5])
% hold on
% figure(2);dstep(dnum,dden)%���Ƶ�λ��Ծ����
% title('��λ��Ծ��Ӧ����')
% hold on
% end

% num=[0.5 1 2 2.393 3 3.5];
% T=1;den=conv([1 0],[1 1]);
% sys1=tf(num(1),den);sys2=tf(num(2),den);
% sys3=tf(num(3),den);sys4=tf(num(4),den);
% sys5=tf(num(5),den);
% sysd1=c2d(sys1,T,'zoh');sysd2=c2d(sys2,T,'zoh');
% sysd3=c2d(sys3,T,'zoh');sysd4=c2d(sys4,T,'zoh');sysd5=c2d(sys5,T,'zoh');
% sysbd1=feedback(sysd1,1);sysbd2=feedback(sysd2,1);
% sysbd3=feedback(sysd3,1);
% sysbd4=feedback(sysd4,1);
% sysbd5=feedback(sysd5,1);
% zplane(sysbd1,'r')
% 
% ,sysbd2,'g
% 
%  T=1;den=conv([1 0],[1 1]);
%  for k=0.1:0.02:10
%      num=k;sys=tf(num,den);
% sysd=c2d(sys,T,'zoh');%������ױ�����������ɢ��
%  sysbd=feedback(sysd,1);
%  [dnum,dden]=tfdata(sysbd,'v');
%  %����'v'�������������ֵ��Ԫ������ȸ�Ϊ����ֱ�����
%  pd=roots(dden)%��ȡ�ջ�����
%  pdz=abs(pd);
%  flag=0;
%  for i=1:length(pd)
%      if pdz(i)>=1
%          flag=1;
%      end
%  end
%      if flag==1 
%          break;
%      end
%  end
%  k%��δ����Ƿ���K���ٽ�ֵ�����Ƕ��ҽ��6.62û��ʲôӰ��

 



