A=[-18/7 9 0;1 -1 1;0 -14.28 0];
H=[27/7;0;0];
C=[1 0 0];
D=[1 0 0];
W=1;
P=sdpvar(3,3,'sym');%pΪ�ǶԳƾ���3x3;
V=sdpvar(3,1,'full');
T=sdpvar(1,1,'sym');
s=[P*A-V*C+A'*P-C'*V' P*H+D'*W*T;T'*W'*D+H'*P -2*T];
%U=poly(T);
Fcond=[P>0,T>0,s<0];
ops=sdpsettings('verbose',0,'solver','sedumi');
diag=solvesdp(Fcond,[],ops);%�������
[m,p]=checkset(Fcond);%���������
tmin=min(m)

if tmin>0
    disp('LMI�����ȷ')
    Ph=double(P);
    Vh=double(V);
    K=inv(Ph)*Vh
else 
    disp('LMI��ⲻ��ȷ')
end

%K=[6.5531;1.4395;-0.5402];

% A=[-18/7 9 0;1 -1 1;0 -14.28 0];
% H=[27/7;0;0];
% C=[1 0 0];
% D=[1 0 0];
% W=1;
% P=sdpvar(3,3,'symmetric');
% V=sdpvar(3,1,'full');
% T=sdpvar(1,1,'symmetric');
% s=[P*A-V*C+A'*P-C'*V' P*H+D'*W*T;T'*W'*D+H'*P -2*T];
% Fcond=[P>0,T>0,s<0];
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m p]=checkset(Fcond);
% tmin=min(m)
% 
% if tmin>0
%     Ph=double(P);
%     Vh=double(V);
%     disp('ϵͳ���ȶ��ģ����ҿ��������ȶ�')
%     K=inv(Ph)*Vh
% else
%     disp('ϵͳ����ͨ��״̬�����ﵽ�ȶ�')
% end
