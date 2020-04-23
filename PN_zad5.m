sample='Sample';
first='p';
second='r';
k=character(sample,first,second);
sample=k;
disp(sample);
fprintf('\n');

function [sample]=character(sample,first,second)
flag=false;
flag2=false;
for i=1:length(sample)-1   
  if(sample(i)==first)
     sample(i)=second;     
     flag2=true;           
      return;
  else
       if(sample(i)==second) 
       flag=true;         
       p=i;
       end
  end
end
   if(flag==true && flag2==false)   
      sample(p)=[];
   else
    sample=sample;     
   end
end
