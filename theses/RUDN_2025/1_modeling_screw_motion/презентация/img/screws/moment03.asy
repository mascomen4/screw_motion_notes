// Замена начала отсчета и изменение момента винта

include "../config.asy";


import three;
import graph3;

render = 10;
unitsize(2cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 4;

triple P = (-1, 1, 0.25);
triple v = rotate(v=Z, angle=-30)*(-Y);
triple Q = P + v;
triple O_new = O + (0.5X-Y+Z);
triple p_new = P - O_new;

triple m = cross(P, v);
triple m_new = cross(p_new, v);

draw(
  g=P-0.2v -- Q+0.2v,
  p=0.5bp+black
);

draw(
  g=P--Q,
  L=Label(s="$\vb{v}$", align=N, p=black),
  p=black,
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O--P,
  L=Label(s="$\vb{p}$", align=N, position=Relative(0.6)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O_new--O,
  L=Label(s="$\Delta\vb{p}$", align=S, position=Relative(0.4)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O_new--P,
  L=Label(s="$\vb{p}^{\prime}$", align=N, position=Relative(0.3)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=P--P+m,
  L=Label(s="$\vb{v}^{o}$", align=W, position=Relative(0.9)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=P--P+m_new,
  L=Label(s="$\vb{v}^{o^\prime}$", align=W, position=Relative(0.9)),
  arrow=Arrow3(size=arrow_size)
);

dot(v=P, L=Label(s="$P$", align=S));
// dot(v=Q, L=Label(s="$Q$", align=N));
dot(v=O, L=Label(s="$O$", align=2N+E));
dot(v=O_new, L=Label(s="$O^{\prime}$", align=N));

xaxis3(
pic=currentpicture, L=Label("$x$", position=EndPoint),
axis=YZZero, xmin=-1, xmax=1, p=0.5bp+heavyred, ticks=NoTicks3,
arrow=Arrow3(size=arrow_size), above=false
);
yaxis3(
pic=currentpicture, L=Label("$y$", position=EndPoint),
axis=YZZero, ymin=-1, ymax=1, p=0.5bp+deepgreen,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);
zaxis3(
pic=currentpicture, L=Label("$z$", position=EndPoint),
axis=YZZero, zmin=-0.2, zmax=2, p=0.5bp+heavyblue,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);

draw(
  s=surface(X--Y--(-2X)--(-2Y)--cycle),
  nu=1, nv=1,
  surfacepen=paleblue+opacity(0.7),
  meshpen=invisible,
  light=nolight
);