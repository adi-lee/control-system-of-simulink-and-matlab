%ʵ��3
%��3-34
%�Լ���д
A=[4 1 0 0; 0 4 1 0;
   0 0 4 1; 0 0 0 4];
B=[0 0;1 2;0 0;2 1];
C=[1 0 2 0; 2 0 4 2];
D=zeros(2,4);
M=ctrb(A,B)
N=obsv(A,C)
r1=rank(M)
r2=rank(N)
L=size(A)%size������ȡ���������������
if r1==L
    output='ϵͳ��ȫ�ܿ�'
else
    output='ϵͳ���ܿ�'
end
if r2==L
    output='ϵͳ��ȫ�ܹ�'
else
    output='ϵͳ���ܹ�'
end