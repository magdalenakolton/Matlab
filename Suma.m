classdef Suma 
    methods(Static)
        function [sum] = Sum(n)
            sum=0;
            if(mod(n,2) ~= 0)
                x=n+1;
                for a=x:2:2*x
                    sum=sum+a;
                end
            else
                for a=n:2:(n*2)     
                    sum=sum + a;
                end
                disp("Suma ciagu <n,2n>: " + sum);
            end
        end
    end
end