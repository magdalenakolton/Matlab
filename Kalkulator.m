classdef Kalkulator
    methods(Static)
        function wynik = oblicz(dane)
            wynik.Q = dane.Fo/dane.B;
            wynik.Wo = 2*dane.Fo*pi*1000000;
            wynik.L = dane.R/(wynik.Q*wynik.Wo);
            wynik.C = 1/(wynik.Wo*wynik.Wo*wynik.L);
            wynik.Ao = 1/(1-(wynik.Q/dane.Qo));
            wynik.A = wynik.Ao*wynik.Q*(7/dane.Fo-dane.Fo/7);
        end
    end
end