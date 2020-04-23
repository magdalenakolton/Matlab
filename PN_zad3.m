n1=input('Podaj liczbe:');
count=l_pierwsza(n1);
disp(count);
fprintf('\n');


function [a]= l_pierwsza(n)
    if (n==1 || n==2)  
      a=('l.pierwsza');
      return;
    end
 for i=2:n-1
     if (mod(n,i)==0)       
       a=('liczba zlozona');
       return;
     else 
      a=('liczba pierwsza');
     end
 end 
end