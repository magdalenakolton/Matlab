close all; clear; clc;
%Magdalena Kołton zad.1 ćw.6

W1 = [0 0 4 2 0 -3];
U1 = [2 0 -3 -5 0 2];

W2 = [0 -5 0 0 -4 -2 0 0];
U2 = [1 0 0 0 5 2 0 4];
G2 = [1 0 -1 3];

W3 = [0 0 4 2 0 -3];
U3 = [2 0 0 0 5 2];
G3 = [2 0 0 0 4 0 0 0];

%obliczenia:
wynik = W1-U1;
disp("wynik odejmowania I: ");
disp(wynik);

dodawanie = W2+U2;
mnozenie=conv(dodawanie,G3);
disp('Wynik (w+u)*g: ');
disp(mnozenie);

mnozenie2 = conv(W3,U3);
disp(mnozenie2);
G3_2 = [0 0 0 2 0 0 0 4 0 0 0]
odejmowanie = mnozenie2-G3_2;
disp('Wynik w*u-g: ');
disp(odejmowanie);

%miejsca zerowe wielomianow:
W1o = roots(W1);
W2o = roots(W2);
W3o = roots(W3);
U1o = roots(U1);
U2o = roots(U2);
G2o = roots(G2);
G3o = roots(G3);
disp('Miejsca zerowe: ');
disp(W1o); disp(W2o); disp(W3o); disp(U1o); disp(U2o); disp(G2o); disp(G3o);

%całki nieoznaczone i pochodne:
c1 = polyint(W1);
p1 = polyder(W1);
c2 = polyint(W2);
p2 = polyder(W2);
c3 = polyint(W3);
p3 = polyder(W3);
c4 = polyint(U1);
p4= polyder(U1);
c5 = polyint(U2);
p5 = polyder(U2);
c6 = polyint(G2);
p6 = polyder(G2);
c7 = polyint(G3);
p7 = polyder(G3);
disp('Całka: '); disp(c1); 
disp('Pochodna: '); disp(p1);

%wartości wielomianów dla wskazanego x:

x = -100:2:100;
x1 = polyval(W1,x);
x2 = polyval(W2,x);
x3 = polyval(W3,x);
x4 = polyval(U1,x);
x5 = polyval(U2,x);
x6 = polyval(G2,x);
x7 = polyval(G3,x);

disp('Wartości funkcji: '); disp(x1);

