// Независимость момента от точки на прямой

include "../config.asy";


import three;
import graph3;

render = 0;
unitsize(2cm);
currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 5;

triple P1 = (-1, -1.5, 0.25);
triple v = Y;
triple Q1 = P1 + v;
triple delta_v = 1.5v;
triple P2 = P1 + delta_v;
triple Q2 = Q1 + delta_v;

triple m1 = cross(P1, v);
triple m2 = cross(P2, v);

// фоновая прямая
draw(
  g=P1-0.5v -- Q2+0.1v,
  p=0.5bp+black
);
draw(
  g=O--P1,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{p}$", align=NE)
);
draw(
  g=O--P2,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{p}^{\prime}$", align=W)
);
draw(
  g=P1--Q1,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{v}$", align=N, p=black),
  p=1bp+red
);
draw(
  g=P2--Q2,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{v}^{\prime}$", align=N, p=black),
  p=1bp+red
);
draw(
  g=P1--P1+m1,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{m}$", align=W, p=black),
  p=1bp+royalblue
);
draw(
  g=P2--P2+m2,
  arrow=Arrow3(size=arrow_size),
  L=Label(s="$\vb{m}$", align=E, p=black),
  p=1bp+royalblue
);

dot(v=P1, L=Label(s="$P$", align=N));
dot(v=P2, L=Label(s="$P^{\prime}$", align=NE));
dot(v=O, L=Label(s="$O$", align=S));

// xaxis3(
// pic=currentpicture, L=Label("$x$", position=EndPoint),
// axis=YZZero, xmin=-1, xmax=1, p=0.5bp+heavyred, ticks=NoTicks3,
// arrow=Arrow3(size=arrow_size), above=false
// );
// yaxis3(
// pic=currentpicture, L=Label("$y$", position=EndPoint),
// axis=YZZero, ymin=-1, ymax=1, p=0.5bp+deepgreen,
// ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
// );
// zaxis3(
// pic=currentpicture, L=Label("$z$", position=EndPoint),
// axis=YZZero, zmin=-0.2, zmax=1, p=0.5bp+heavyblue,
// ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
// );