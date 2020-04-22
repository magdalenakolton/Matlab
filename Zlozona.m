classdef Zlozona
    methods(Static)
        function sprawdz(n)
            counter = 0;
            disp("Liczba " + n + " jest liczba: ")
            
            if (n<2)  
                disp("pierwsza")
                return
            end
            for i=1:1:n
                if (mod(n,i)==0)       
                    counter = counter+1;
                end
            end 
            if (counter == 2)
                disp("pierwsza")
            else 
                disp("zlozona")
            end
            return
        end
    end
end

