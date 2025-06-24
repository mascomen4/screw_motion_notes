// Визуализация момента вектора относительно точки

include "../config.asy";


import three;
import graph3;

render = 10;
unitsize(2cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

// Направляющий вектор, точка прямой и момент
triple v = (0, 1, 0);
triple P_0 = (-1, 0, 1);
triple m = cross(P_0, v);
// Вращение и плоскость момента с радиус вектором
path3 rotation_plane = circle(c=P_0, r=0.5, normal=v);
path3 pm_plane = O--P_0--P_0+m--cycle;

// Первый радиус вектор
draw(
  g=P_0--P_0+v,
  arrow=Arrow3(size=5),
  L=Label(s="$\vb{v}$", position=Relative(0.8))
);

draw(
  g=P_0--P_0+m,
  arrow=Arrow3(size=5),
  L=Label(s="$\vb{m}$", align=E, position=Relative(0.7))
);

draw(
  g=rotation_plane,
  p=heavyred,
  arrow=Arrow3(size=5)
);

draw(
  s=surface(rotation_plane),
  nu=1, nv=1,
  surfacepen=palered+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

draw(
  s=surface(pm_plane),
  nu=1, nv=1,
  surfacepen=paleblue+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

// Второй радиус вектор

triple P_1 = P_0+2v;
triple m1 = cross(P_1, v);
path3 rotation_plane_1 = circle(c=P_1, r=0.5, normal=v);
path3 pm_plane_1 = O--P_1--P_1+m1--cycle;

draw(
  g=P_1--P_1+m1,
  arrow=Arrow3(size=5),
  L=Label(s="$\vb{m}$", align=E, position=Relative(0.7))
);

draw(
  g=rotation_plane_1,
  p=heavyred,
  arrow=Arrow3(size=5, position=Relative(0.3))
);

draw(
  s=surface(rotation_plane_1),
  nu=1, nv=1,
  surfacepen=palered+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

draw(
  s=surface(pm_plane_1),
  nu=1, nv=1,
  surfacepen=paleblue+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

// Третий радиус вектор

triple P_2 = P_0-1.5v;
triple m2 = cross(P_2, v);
path3 rotation_plane_2 = circle(c=P_2, r=0.5, normal=v);
path3 pm_plane_2 = O--P_2--P_2+m2--cycle;

draw(
  g=P_2--P_2+m2,
  arrow=Arrow3(size=5),
  L=Label(s="$\vb{m}$", align=E, position=Relative(0.7))
);


draw(
  g=rotation_plane_2,
  p=heavyred,
  arrow=Arrow3(size=5, position=Relative(0.7))
);

draw(
  s=surface(rotation_plane_2),
  nu=1, nv=1,
  surfacepen=palered+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

draw(
  s=surface(pm_plane_2),
  nu=1, nv=1,
  surfacepen=paleblue+opacity(0.7),
  meshpen=invisible,
  light=nolight
);

// Точки, радиус векторы

draw(P_0-3v--P_0+3v);
draw(O--P_0, arrow=Arrow3(size=5));
draw(O--P_1, arrow=Arrow3(size=5));
draw(O--P_2, arrow=Arrow3(size=5));

dot(v=O, p=1bp+black, L=Label("$O$", align=W));

dot(v=P_0, p=2bp+black, L=Label("$P_0$", align=NE));
dot(v=P_1, p=2bp+black, L=Label("$P_1$", align=NE));
dot(v=P_2, p=2bp+black, L=Label("$P_2$", align=NE));

// axes3(
//   pic=currentpicture,
//   xlabel="$x$",
//   ylabel="$y$",
//   zlabel="$z$",
//   extend=false,
//   min=(-1, -1, -1),
//   max=(+1, +1, +1),
//   p=1bp+black,
//   arrow=Arrow3(size=8)
// );