num=[1,2,3,2,1];den=[1,2,6,7,3,1];
G=tf(num,den);pzmap(G)%��������ϵͳ���㼫��ͼ
pole=roots(den)%�ɱջ��������̼���ջ�����
[z,p,k]=tf2zp(num,den)%����tf2zp����ջ�ϵͳ�㼫��
