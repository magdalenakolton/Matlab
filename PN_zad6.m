k=power(3,4);
disp(k);

function [b]=power(a,n)
  k=n+1;
   for i=1:1:k
      b(i)=a^(i-1);    
   end
   return;
     
end

