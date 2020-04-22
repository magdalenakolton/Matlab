classdef Potegowanie
    methods(Static)
        function poteguj(a,n)
            wynik(1) = 0;
            wynik(2) = a;
            for i = 3:1:n+1
                wynik(i) = wynik(i-1) * a;
            end
            disp(wynik);
            return;
        end
    end
end

