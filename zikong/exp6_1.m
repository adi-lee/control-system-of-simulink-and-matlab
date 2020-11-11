syms a t s
f1=exp(-a*t);
F1=ztrans(f1),pretty(F1)
f2=ilaplace(1/s/(s+1)/(s+2),t)
F2=ztrans(f2),pretty(F2)