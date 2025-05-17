% diff求导
syms t x y alpha beta T ku;
vExact = ku*(t-T)^3*sin(alpha*pi*x)*sin(beta*pi*y);
uExact = -diff(vExact,t)-diff(diff(vExact,x),x)-diff(diff(vExact,y),y)
vx = diff(vExact,x);
vy = diff(vExact,y);
ux = diff(uExact,x);
uy = diff(uExact,y);
ut = diff(uExact,t);
f = diff(uExact,t)-diff(diff(uExact,x),x)-diff(diff(uExact,y),y);
fx = diff(f,x);
fy = diff(f,y);