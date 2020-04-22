classdef Ciag
    methods(Static)
        function wynik = sprawdz(tab)
            roznica1 = tab(3)-tab(2);
            roznica2 = tab(2)-tab(1);
            
        if(roznica1==roznica2)
           disp("Ciag arytmetyczny")
           wynik = roznica1;
           disp("Roznica: " + wynik)
        else 
            disp("Ciag geometryczny")
            wynik = tab(2)/tab(1);
            disp("Iloraz: " + wynik);
        end
        end
    end
end

