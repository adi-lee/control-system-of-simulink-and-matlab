% 5.1
disp('5.1(1)')
A1=[0 2;-2 0];
B1=[1;0];
C1=[0 1];
D1=0;
M1=ctrb(A1,B1);
r1=rank(M1)%判断系统能控性
P1=[-3+2*1i,-3-2*1i];
K1=acker(A1,B1,P1)

%（2）小问
disp('5.1(2)')
A2=[1 -1 1; 0 1 1;1 0 1];
B2=[0;0;1];
M2=ctrb(A2,B2);
r2=rank(M2);
L2=size(A2);
if r2==L2
    disp('5.1第二小问的系统可以用状态反馈任意配置闭环极点')%系统能控
    P2=[-5 -1-1i -1+1i];
    K2=place(A2,B2,P2)
else
    disp('5.1第二小问的系统不可以用状态反馈任意配置闭环极点')
end

%(3)小问
disp('5.1(3)')
A3=[0 0 -1;1 0 -3;0 1 -3];
B3=[1;1;0];
C3=[0 -1 -2];
D3=0;
[num3,den3]=ss2tf(A3,B3,C3,D3)
pole=roots(den3)
R=find(real(pole)>0);
t3=length(R);
if t3==0
    disp('该系统是稳定的')
else
     disp('该系统不是稳定的')
end
M3=ctrb(A3,B3);
r3=rank(M3);
L3=size(A3);
if r3==L3
    disp('该系统能实现镇定')   
    P4=[-1 -2 -3];%设置极点
    K3=place(A3,B3,P4)%求出的状态反馈阵
else
    disp('系统不完全能控')
    [Ah3,Bh3,Ch3,T3,k3]=ctrbf(A3,B3,C3)%按能控性分解
    Ah4=Ah3(1:1,1:1);
    Bh4=Bh3(1:1,1:1);
    Ch4=Ch3(1:1,1:1);
    Dh4=0;%不能控子系统
    Ah14=Ah3(2:3,2:3);
    Bh14=Bh3(2:3,1:1);
    Ch14=Ch3(1:1,2:3);
    Dh14=0;%不能控子系统
    [numh4,denh4]=ss2tf(Ah4,Bh4,Ch4,Dh4)
    poleh4=roots(denh4)
    Rh4=find(real(poleh4)>0);
    th4=length(Rh4);
    if th4==0
        disp('该不能控子系统是稳定的')
         disp('该系统可以实现镇定')
          P4=[-1 -2 ];%设置极点
          K3=place(Ah14,Bh14,P4)%求出的能控子系统的状态反馈阵
    else
         disp('该不能控子系统不是稳定的')
          disp('该系统不可以实现镇定')
    end
end

% Q3=[1 0 0;0 1 0;0 0 1];%选定正定矩阵Q
% if det(A3)~=0
%     P3=lyap(A3,Q3)   
%     det1=det(P3(1,1))%德尔塔1
%     det2=det(P3(2,2))%德尔塔2
%     detp=det(P3)      %3
% end
% 
% if det1>0
%     if det2>0
%         if detp>0
%             disp('第三小问的系统是稳定的')
%             P4=[-1 -2 -3];%设置极点
%              K3=place(A3,B3,P4)%求出的状态反馈阵
%         else
%             disp('第三小问的系统是不稳定的')
%         end
%     else
%         disp('第三小问的系统是不稳定的')
%     end
% else 
%    disp('第三小问的系统是不稳定的')
% end

%（4）小问
disp('5.1(4)')
A4=[-1 0 1;1 -2 0;0 0 -3];
B4=[0;1;1];
C4=[1 1 1];
D4=0;
N=obsv(A4,C4);
r4=rank(N)
L=size(A4);
if r4==L
    disp('5.1第四小问系统完全可观测，可以构造状态观测器')
    P5=[-5 -5 -5];%利用对偶原理求解
    A5=A4';
    B5=C4';
    K4=acker(A5,B5,P5);
    G=K4'
    AGC=A4-G*C4 
    
else
    disp('5.1第四小问系统不完全可观测，不可以构造状态观测器')
end



%5.2
disp('5.2')
A6=[2 1 0 0;0 2 0 0;0 0 -1 0; 0 0 0 -1];
B6=[0;1;1;1];
M6=ctrb(A6,B6);
r6=rank(M6)
L6=size(A6)
C6=0;
if r6==L6
    disp('5.2系统完全能控，可以构造状态反馈阵，配置极点')
    P6=[-2 -2 -2 -1];
    K6=place(A6,B6,P6)
else 
    disp('5.2系统不完全能控')%该系统有一个极点已经为-1，直接令其前三项形成新系统，配置闭环极点
    A16=A6(1:3,1:3);
    B16=B6(1:3,:);
    M16=ctrb(A16,B16);
    r16=rank(M16)
    L16=size(A16)
    
    if r16==L16
        P16=[-2 -2 -2 ];%配置闭环极点为-2 -2 -2
        K16=acker(A16,B16,P16)
    %[Ah6,Bh6,Ch6,T6,k6]=ctrbf(A6,B6,C6)%没有C6啊
    end
    
end


%5.3
disp('5.3')
A7=[-1 -2 -2;0 -1 1;1 0 -1];
B7=[2; 0 ;1];
M7=ctrb(A7,B7);
r7=size(A7);
L7=size(A7);
if r7==L7
    disp('5.3系统完全能控，系统状态反馈可以镇定')
else 
    disp('5.3系统不完全能控,需要进一步判断系统状态反馈是否可以镇定')
end
%（2）
A8=[-2 1 0 0 0; 0 -2 1 0 0;
    0 0 -2 0 0;0 0 0 -5 1;
    0 0 0 0 -5];
B8=[4;5;0;7;0];
M8=ctrb(A8,B8);
r8=rank(M8);
L8=size(A8);
if r8==L8
    disp('5.3(2)系统完全能控，系统状态反馈可以镇定')
else 
    disp('5.3(2)系统不完全能控,需要进一步判断系统状态反馈是否可以镇定')
   %[Ah8,Bh8,Ch8,T9,k8]=ctrbf(A8,B8,C8)
    P18=poly(A8)%用特征值判断系统稳定性
    V8=roots(P18)
end


%5.4
disp('5.4')
syms key1 key2
A9=[-1 0 0 0;2 -3 0 0;
    0 0 2 0; 4 -1 2 -4];
B9=[0;0;1;2];
C9=[3 0 1 0];
D9=0;
[num9,den9]=ss2tf(A9,B9,C9,D9);
G9=tf(num9,den9)
figure(1);
pzmap(G9);%零极点分布图
pole=roots(den9);%求出极点，系统不稳定
M9=ctrb(A9,B9);
r9=rank(M9);
L9=size(A9);
N9=obsv(A9,C9);
r10=rank(N9);
if r9==L9
    disp('5.4系统完全能控')
    P9=[-5 -1 -2-2*1i -2+2*1i];
    K9=acker(A9,B9,P9)
else
    key1=1;
    disp('5.4系统不完全能控')
end
if r10==L9
    disp('5.4系统完全能观')
    P10=[-3 -4 -1-1i -1+1i];%利用对偶原理求解
    A10=A9';
    B10=C9';
    K10=acker(A10,B10,P10);
    G10=K10'
    AGC1=A10-G10*C9 
else
    key2=1;
    disp('5.4系统不完全能观')
end%以上判断能控性能观性，能控能观直接进行状态反馈阵和状态观测器的设计
%如果不能控不能观，key1\key2标志位置位，进行能控能观性分解
if key1==1&&key2==1
    [Ah9,Bh9,Ch9,T9,k9]=ctrbf(A9,B9,C9)
    Ah10=Ah9(1:2,1:2)
    Bh10=[0 ; 0]
    Ch10=Ch9(1:1,1:2)%不能控子系统能观性分解
    Dh10=[0];
    [Ah11,Bh11,Ch11,T11,k11]=obsvf(Ah10,Bh10,Ch10)%不能控子系统能观性分解
    Ah12=Ah9(3:4,3:4);
    Bh12=[0;2.2361];
    Ch12=Ch9(1:1,3:4);%能控子系统能观性分解
    Dh12=0;
    [Ah13,Bh13,Ch13,T13,k13]=obsvf(Ah10,Bh10,Ch10)%不能控子系统能观性分解
end
if key1==1&&key2==1
%接下来对不能控子系统进行稳定的判定，以确定其是否能够进行状态反馈镇定
    
    [num13,den13]=ss2tf(Ah10,Bh10,Ch10,Dh10)
    pole13=roots(den13)
    R13=find(real(pole13)>0);
    t13=length(R13); 
    if t13==0
        disp('该不能控子系统是稳定的')%如果是稳定则进行状态反馈阵的设计
       disp('状态反馈阵设计如下：')
       P9=[-2+2*1i,-2-2*1i];
      K9=acker(Ah12,Bh12,P9)
    else
         disp('该不能控子系统不是稳定的，不能进行状态反馈')
    end
end
if key1==1&&key2==1
%接下来对不能观子系统进行稳定的判定，以确定其是否能够进行状态反馈镇定
    
    [num14,den14]=ss2tf(Ah12,Bh12,Ch12,Dh12)
    pole14=roots(den14)
    R14=find(real(pole14)>0);
    t14=length(R14);
    if t14==0
        disp('该不能观子系统是稳定的')%如果是稳定则进行状态反馈阵的设计
       disp('状态观测器设计如下：')
        P10=[-3 -4 -1-1i -1+1i];%利用对偶原理求解
        A10=A9';
        B10=C9';
        K10=acker(A10,B10,P10);
        G10=K10'
        AGC1=A10-G10*C9 
    else
         disp('该不能观子系统不是稳定的，不能进行状态观测器设计')
    end
end

    
