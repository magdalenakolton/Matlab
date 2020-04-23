close all; clear; clc;
%Magdalena Kołton zad.2 ćw.6
syms x

W1 = 4*x^3 + 2*x^2 -3;
U1 = 2*x^5 - 3*x^3 - 5*x^2 + 2;

W2 = -5*x^6 - 4*x^3 - 2 * x^2;
U2 = x^7 + 5*x^3 + 2*x^2 +4;
G2= x^3 - x + 3;

W3 = 4*x^3 + 2*x^2 -3;
U3 = 2*x^5 - 5*x + 2;
G3 = 2*x^7 - 4*x^3;

disp('Pochodne: ');
disp(diff(W1));
disp(diff(U1));
disp(diff(W2));
disp(diff(U2));
disp(diff(G2));
disp(diff(W3));
disp(diff(U3));
disp(diff(G3));

disp('Calki: ');
disp(int(W1));
disp(int(U1));
disp(int(W2));
disp(int(U2));
disp(int(G2));
disp(int(W3));
disp(int(U3));
disp(int(G3));

X = -100:2:100;
disp('Wartosci dla zadanego X: ');
disp(subs(W1,x,X));
disp(subs(U1,x,X));
disp(subs(W2,x,X));
disp(subs(U2,x,X));
disp(subs(G2,x,X));
disp(subs(W3,x,X));
disp(subs(U3,x,X));
disp(subs(G3,x,X));

disp('Miejsca zerowe: ');
disp(solve(W1));
disp(solve(U1,x,X));
disp(solve(W2,x,X));
disp(solve(U2,x,X));
disp(solve(G2,x,X));
disp(solve(W3,x,X));
disp(solve(U3,x,X));
disp(solve(G3,x,X));


disp('Wyniki dzialan: ');
wynik1 = W1 - U1;
disp("wynik odejmowania I: "); disp(wynik1);

dodawanie = W2+U2;
mnozenie = expand(dodawanie*G2);
disp('Wynik (w+u)*g: '); disp(mnozenie);

mnozenie2 = expand(W3*U3);
odejmowanie = mnozenie2 - G3;
disp('Wynik w*u-g: '); disp(odejmowanie);



