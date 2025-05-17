% diff求导
syms t x y  T ku;
vExact = ku*(t-T)^3 *(1-(x^2)/4 - y^2)^3;
uExact = -diff(vExact,t)-diff(diff(vExact,x),x)-diff(diff(vExact,y),y);
vx = diff(vExact,x);
vy = diff(vExact,y);
ux = diff(uExact,x);
uy = diff(uExact,y);
ut = diff(uExact,t);
f = diff(uExact,t)-diff(diff(uExact,x),x)-diff(diff(uExact,y),y);
fx = diff(f,x)
fy = diff(f,y)