%4.1
A1=[1 2 4;1 1 1;0 2 1];
P1=poly(A1)%������ֵ�ж�ϵͳ�ȶ���
V1=roots(P1)

A2=[0 1 0 0;0 0 1 0;0 0 0 1;0 -1 -3 -3];
P2=poly(A2)%������ֵ�ж�ϵͳ�ȶ���
V2=roots(P2)
%��ʱ���ٳ���ʹ�ö��ַ���



%4.2
syms x1 x2 x3
A3=[1 0 -1;0 1 0;0 0 2];
X=[x1;x2;x3];
Q3=[1 0 0;0 1 0;0 0 1];%ѡ����������Q
if det(A3)~=0
    P3=lyap(A3,Q3)   
    det1=det(P3(1,1))%�¶���1
    det2=det(P3(2,2))%�¶���2
    detp=det(P3)      %3
end
disp('������ŵ������')
V=X'*P3*X%������ŵ����
if det1>0
    if det2>0
        if detp>0
            output='��ϵͳ���ȶ���'
        else
            output='��ϵͳ�ǲ��ȶ���'
        end
    else
        output='��ϵͳ�ǲ��ȶ���'
    end
else 
    output='��ϵͳ�ǲ��ȶ���'
end

