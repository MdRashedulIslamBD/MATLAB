clc
clear
close
f=@(x,y) (x.^2 +y)
x0=0
y0=1

xn=input('give this value')
h=.05
n=(xn-x0)/h

for i=1:n
    y1=y0+h*f(x0,y0);
    while(i)
        y2=y0+((h/2)*(f(x0,y0)+f(x0+h,y1)));
        if abs(y1-y2)<.00001
            break
        else
            y1=y2;
        end
    end

   y0=y1;
    x0=x0+h;
  %  p(i)=x0;
    %q(i)=y0;
end
y1
%plot(p,q)
    
