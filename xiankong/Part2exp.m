% A=[1 2 4;1 1 1;0 2 1];
% P=sdpvar(3,3,'symmetric');%参数可简写成sy
% Fcond=[P>0,A'*P+P*A<0];
% 
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m,p]=checkset(Fcond);
% tmin=min(m);
% 
% if tmin>0
%     disp('System is sable')
% else 
%     disp('System is unstable')
% end


A=[1 2 4;1 1 1;0 2 1];
B=[1; 2 ;1];
L=sdpvar(3,3,'sy');
V=sdpvar(1,3,'full');
Fcond=[L>0,A*L+L*A'+B*V+V'*B'<0];
ops=sdpsettings('verbose',0,'solver','sedumi');
diagnostics=solvesdp(Fcond,[],ops);
[m,p]=checkset(Fcond);
tmin=min(m);
if tmin>0
    Vh=double(V);
    Lh=double(L);
    disp('System canbe stabilized,and the control gain is given as')
    K=Vh*inv(Lh)
else
    disp('System cannot be stabilized using state-feedback controler')
end
