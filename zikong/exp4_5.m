den=[1,1];
k=0:0.1:3;
for i=1:31
    G=tf(k(i),den,'iodelay',0.8)
    nyquist(G)
    grid on
    drawnow
   
end
