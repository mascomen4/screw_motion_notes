// Пример винтового движения прямой

include "../config.asy";


import three;
import graph3;

render = 10;
unitsize(3cm);
// currentprojection=obliqueX;
currentpicture.keepAspect=true;

real arrow_size = 5;
real theta = 45;

transform3 T = shift(v=Z) * rotate(v=Z, theta);

triple P = (1, 1, 0);
guide3 l = (-P)--P; 

path3 Theta = Arc(c=O, v1=0.5P, v2=rotate(v=Z, angle=theta)*0.5P, direction=CCW);

draw(
  g=l,
  L=Label("$l$", align=E, position=Relative(0.9))
);
draw(
  g=T*l,
  L=Label("$l^{\prime}$", align=N, position=Relative(0.9))
);

draw(
  g=Theta,
  arrow=Arrow3(size=4),
  p=0.5bp+dashed,
  L=Label("$\theta = \frac{\pi}{4}$", align=SE, position=Relative(0.5))
);
draw(
  g=rotate(v=Z, angle=theta)*0.5P -- T*0.5P,
  arrow=Arrow3(size=4),
  p=0.5bp+dashed,
  L=Label("$\theta^o$", align=E, position=Relative(0.6))
);


draw(P--(0, P.y, 0), p=0.2bp+dashed);
draw(P--(P.y, 0, 0), p=0.2bp+dashed);

dot(O, L=Label("$O$", align=2S+W));
dot(Z, L=Label("$P_0 = (0, 0, 1)$", align=NE));

xaxis3(
pic=currentpicture, L=Label("$x$", position=EndPoint),
axis=YZZero, xmin=-1.5, xmax=1.2, p=0.5bp+heavyred, ticks=NoTicks3,
arrow=Arrow3(size=arrow_size), above=false
);
yaxis3(
pic=currentpicture, L=Label("$y$", position=EndPoint),
axis=YZZero, ymin=-1, ymax=1.2, p=0.5bp+deepgreen,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);
zaxis3(
pic=currentpicture, L=Label("$z$", position=EndPoint),
axis=YZZero, zmin=-0.2, zmax=1.5, p=0.5bp+heavyblue,
ticks=NoTicks3, arrow=Arrow3(size=arrow_size), above=false
);
