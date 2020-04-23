disp('trojkat prostokatny');
countAngle(0,0,10,0,10,10);
disp('trojkat rownoboczny');
countAngle(1,1,4,-2,(5+3*sqrt(3))/2,(-1+3*sqrt(3))/2);
fprintf('\n');

function countAngle(x1,y1,x2,y2,x3,y3)    
    a=sqrt((x2-x1)^2 + (y2-y1)^2);
    b=sqrt((x3-x2)^2 + (y3-y2)^2);    % obliczam  dlugosc bokow trojkata
    c=sqrt((x1-x3)^2 + (y1-y3)^2);
    disp(acosd((-(a^2)+c^2+b^2)/(2*c*b)));
    disp(acosd((-(b^2)+a^2+c^2)/(2*a*c)));  % obliczam katy pomiedzy bokami : c^2=a^2+b^2-2ab*cos(C)
    disp(acosd((-(c^2)+a^2+b^2)/(2*a*b)));
end

