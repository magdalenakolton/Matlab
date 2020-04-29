%Magdalena Kołton, ćwiczenia 7
close all; clear; clc;

%zad1:
x = 0:0.01:5*pi; %przedział
f1 = sin(x);
f2 = cos(x);
subplot(211), plot(x,f1); %wyswietlam dwa wykresy w jednym oknie, jeden nad drugim
subplot(212), plot(x,f2);


%zad2:
close all; clear; clc;
x = 0:0.01:4*pi;
f1 = sin(x);
f2 = 2*(sin(x)).^2;
f3 = 3*(cos(x)).^3;

plot(x,f1,'b', x,f2,'k', x, f3, 'r');

%zad3:
close all; clear; clc;
g = -10*pi:pi/100:10*pi;
grid;
plot(g(g<=0),g(g<=0).*sin(g(g<=0)), 'k', g(g>0),g(g>0).*cos(g(g>0)),'r');

%zad4:
close all; clear; clc;
x = -2:0.05:2;
y = -2:0.05:2;
[X,Y] = meshgrid(x,y);
f = Y.^2 - X.^2;
figure;
contour(x,y,f);

%zad5:
close all; clear; clc;
x = -6:0.2:6;
y=-6:0.2:6;
[X,Y] = meshgrid(x,y);
F = exp(-(X-1).^2 + Y.^2);
G = exp(-(X+1).^2-Y.^2);
figure;
surf(x,y,F);
surf(x,y,G);

lp=[-pi/2,0,0];
light('Position',lp,'Style','local');
hold on
plot3(lp(1),lp(2),lp(3),'y*','MarkerSize',15,'LineWidth',3);



