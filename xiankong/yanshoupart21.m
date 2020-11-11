disp('PART 2 练习题1')
A1=[1 3 5 9; 6 2 1 1;
    3 7 4 3;4 3 7 7];
P1=sdpvar(4,4,'sy');
Fcond1=[P1>0,A1'*P1*A1<0];
ops1=sdpsettings('verbose',0,'solver','sedumi');
diag1=solvesdp(Fcond1,[],ops1);%迭代求解
[m1,p1]=checkset(Fcond1);%返回求解结果
tmin1=min(m1);
if tmin1>0
    disp('System is sable')
else 
    disp('System is unstable')
end

disp('PART2 练习题2')
A2=[5 3; 1 2];
B2=[2;1];
P2=sdpvar(2,2,'sy');
Q2=sdpvar(2,2,'sy');
R2=sdpvar(1,1,'sy');
T2=[A2'*P2+P2*A2+Q2,P2*B2;B2'*P2,-R2];
U2=poly(T2)
Fcond2=[P2>0,Q2>0,R2>0,U2<0];
ops2=sdpsettings('verbose',0,'solver','sedumi');
diag2=solvesdp(Fcond2,[],ops2);%迭代求解
[m2,p2]=checkset(Fcond1);%返回求解结果
tmin1=min(m1);
if tmin1>0
    disp('LMI求解正确')
    P2=double(P2)
else 
    disp('LMI求解不正确')
end

disp('PART2练习题3')

A3=[2 1;0 1];
B3=[1 3;1 2];
% C3=k;
% D3=[0 0];
M3=ctrb(A3,B3);
r3=rank(M3)
L3=size(A3)
if r3==L3
    disp('该系统完全能控,可设计状态反馈实现镇定')
    L4=sdpvar(2,2,'sy');
    V4=sdpvar(2,2,'full');
Fcond3=[L4>0,A3*L4+L4*A3'+B3*V4+V4'*B3'<0];
ops3=sdpsettings('verbose',0,'solver','sedumi');
diagnostics3=solvesdp(Fcond3,[],ops3);
[m3,p3]=checkset(Fcond3);
tmin3=min(m3);
    if tmin3>0
        Vh=double(V4);
        Lh=double(L4);
        disp('System canbe stabilized,and the control gain is given as')
        K3=Vh*inv(Lh)
    else
        disp('System cannot be stabilized using state-feedback controler')
    end
else
     disp('该系统不完全能控')
end




