// Иллюстрация для скалярного произведения через дуальный угл

include "../config.asy";


import three;
import graph3;

render = 10;
unitsize(3cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 5;

// Угол поворота
real theta = 30;

triple P2 = -X;
triple P1 = +X;

guide3 A1 = P1-0.5Z--P1+Z;
guide3 A2 = P2-0.5Z--P2+Z;


// Вращение и плоскость момента с радиус вектором
path3 rotationX = circle(c=O, r=0.1, normal=X);
path3 rotationA1 = circle(c=P1-rotate(v=X, theta) * 0.4Z, r=0.1, normal=rotate(v=X, 10) * Z);
path3 rotationA2 = circle(c=P2-0.4Z, r=0.1, normal=Z);

path3 Theta = shift(v=P1)*Arc(c=O, v1=0.4Z, v2=rotate(v=X, angle=theta)*0.4Z, normal=X, direction=CCW);


// Винт в начальном и конечном положениях
draw(g=rotate(v=X, angle=theta)*A1, arrow=Arrow3(size=4), L=Label("$\vb{R}_1$", position=Relative(0.8)));
draw(g=A2, arrow=Arrow3(size=4), L=Label("$\vb{R}_2$", position=Relative(0.8)));
// Где был бы винт, если бы его не вращали, а только транслировали
draw(g=A1, p=0.5bp+dashed);

dot(P1, p=2bp+black, L=Label("$P_1$", align=S+2E));
dot(P2, p=2bp+black, L=Label("$P_2$", align=SE));


// Направление вращения вдоль оси трансляции
draw(g=rotationX, arrow=Arrow3(size=4));
// Направление вращения винтов
draw(g=rotationA1, arrow=Arrow3(size=3));
draw(g=rotationA2, arrow=Arrow3(size=3));
// Плоскость вращения
draw(
  s=surface(rotationX),
  nu=1, nv=1,
  surfacepen=palered+opacity(0.7),
  meshpen=invisible,
  light=nolight
);


// Вектор трансляции
draw(g=shift(v=0.4Z)*(P2--P1), p=0.3bp+royalblue, arrow=Arrow3(size=4), L=Label("$\theta^{o}$", p=black));
// Угол поворота
draw(g=Theta, p=0.3bp+royalblue, arrow=Arrow3(size=3), L=Label("$\theta$", p=black));


// Ось винтового движения будет ось Ox
xaxis3(
pic=currentpicture, L=Label("$\vb{R}_{21}$", position=EndPoint),
axis=YZZero, xmin=-1.2, xmax=1.5, p=0.5bp+heavyred, ticks=NoTicks3,
arrow=Arrow3(size=arrow_size), above=false
);
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

