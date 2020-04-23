tab=[2 4 8 16 32 64];
tab1=[5 5.5 6 6.5 7 7.5];
ciag(tab);                     
ciag(tab1);


function  ciag(tab)
  if (tab(2)*tab(2)==tab(1)*tab(3))   %sprawdzam warunekna istnienie ciagu geometrycznego
      disp('ciag geometryczny o q=');
      disp(tab(2)/tab(1));
  else if(tab(2)==((tab(1)+tab(3))/2))   %sprawdzam warunekna istnienie ciagu arytmetycznego
          disp('ciag arytmetyczny o r= :');
          disp(tab(3)-tab(2));
      else
          disp('Niepoprawny ciag')
      end
  end
end









