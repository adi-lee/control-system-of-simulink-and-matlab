syms t y;
y=laplace(exp(-2*t)*sin(6*t))
pretty(y);
syms s F;
F=ilaplace((-1*s^2-s+5)/(s*(s^2+3*s+2)))

