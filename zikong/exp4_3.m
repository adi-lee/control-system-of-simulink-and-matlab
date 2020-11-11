den=conv([1,0],conv([1,1],[1,5]));
k=[ 5 15 30 35 50 ];
for i=1:length(k)
    num=k(i);
    figure(i);
    nyquist(num,den)
    axis([-2,0,-1,1])
end
p=roots(den)
