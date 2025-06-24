// Замена точки отсчета на точку, лежащую на оси винта

include "../config.asy";


import three;
import graph3;

render = 10;
unitsize(2cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 4;

triple P = (-1, 2, 0.25);
triple v = rotate(v=Z, angle=-30)*(-Y);

triple m = cross(P, v);
triple O_new = cross(v, m);
triple p_new = P - O_new;

triple m_new = cross(p_new, v);

write("m_new = ", m_new);

draw(
  g=P-0.2v -- P+3.5v,
  p=0.5bp+black
);

draw(
  g=P--P+v,
  L=Label(s="$\vb{v}$", align=N, p=black),
  p=1bp+red,
  arrow=Arrow3(size=arrow_size)
);
draw(
  g=O_new--O_new+v,
  L=Label(s="$\vb{v}$", align=N, p=black),
  p=1bp+red,
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O--P,
  L=Label(s="$\vb{p}$", align=S, position=Relative(0.6)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O_new--O,
  L=Label(s="$\Delta\vb{p}$", align=N, position=Relative(0.4)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O_new--P,
  L=Label(s="$\vb{p}^{\prime}$", align=2S, position=Relative(0.4)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=P--P+m,
  L=Label(s="$\vb{v}^{o}$", align=W, position=Relative(0.9)),
  arrow=Arrow3(size=arrow_size)
);

draw(
  g=O_new--O_new+m_new,
  L=Label(s="$\vb{v}^{o^\prime}$", align=NE),
  arrow=Arrow3(size=arrow_size)
);

dot(v=P, L=Label(s="$P$", align=S, p=black), p=3bp+blue);
dot(v=O, L=Label(s="$O$", align=N));
dot(v=O_new, L=Label(s="$O^{\prime}$", align=2S+W));

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
// axis=YZZero, zmin=-0.2, zmax=2, p=0.5bp+heavyblue,
// ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
// );

// draw(
//   s=surface(X--Y--(-2X)--(-2Y)--cycle),
//   nu=1, nv=1,
//   surfacepen=paleblue+opacity(0.7),
//   meshpen=invisible,
//   light=nolight
// );