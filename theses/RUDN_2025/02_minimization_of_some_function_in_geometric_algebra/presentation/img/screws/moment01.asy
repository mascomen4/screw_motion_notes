// Момент вектора относительно точки отсчета

include "../config.asy";


import three;
import graph3;

render = 0;
unitsize(2cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 5;

triple P = (-1, 0, 0.5);
triple v = Y;
triple Q = P + v;
triple m = cross(P, v);

dot(v=P, L=Label(s="$P$", align=N));
dot(v=Q, L=Label(s="$Q$", align=N));
dot(v=O, L=Label(s="$O$", align=2S+W));
draw(P--Q, L=Label(s="$\vb{v}$", align=N), arrow=Arrow3(size=arrow_size));
draw(O--P, L=Label(s="$\vb{p}$", align=W), arrow=Arrow3(size=arrow_size));
draw(P--P+m, L=Label(s="$\vb{m}=\vb{v}^{o}$", align=E), arrow=Arrow3(size=arrow_size));

xaxis3(
pic=currentpicture, L=Label("$x$", position=EndPoint),
axis=YZZero, xmin=-1, xmax=1, p=1bp+heavyred, ticks=NoTicks3,
arrow=Arrow3(size=arrow_size), above=false
);
yaxis3(
pic=currentpicture, L=Label("$y$", position=EndPoint),
axis=YZZero, ymin=-0.5, ymax=1, p=1bp+deepgreen,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);
zaxis3(
pic=currentpicture, L=Label("$z$", position=EndPoint),
axis=YZZero, zmin=-0.2, zmax=1, p=1bp+heavyblue,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);