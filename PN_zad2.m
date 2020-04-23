n=20;
sum=Sum(n);
disp('Suma wyrazów w przedziale od 20 do 40 wynosi: ');
disp(sum);

function [InnerSum]= Sum(n)
   InnerSum=0;
    for a=n:2:(n*2)     
        InnerSum=InnerSum + a;
    end
end