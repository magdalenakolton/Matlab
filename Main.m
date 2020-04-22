close all; clear; clc;

%zad1:
tab1 = [2 5 8 11];
tab2 = [2 4 8 16];

Ciag.sprawdz(tab1);
Ciag.sprawdz(tab2);

disp(" ")
%zad2:
n = 20;
Suma.Sum(n);

disp(" ")
%zad3:
a = 11;
b = 12;

Zlozona.sprawdz(a);
Zlozona.sprawdz(b);

disp(" ")
%zad4:
a = 2;
n = 3;

disp("Wyniki potegowania liczby " + a + " do potegi " + n + ": ")
Potegowanie.poteguj(a,n);

%zad5:
dane = struct('Fo',3.65,'B',0.365,'R',5000,'Qo',200);
disp("Wyniki z zadania 5: ");
disp(Kalkulator.oblicz(dane));






