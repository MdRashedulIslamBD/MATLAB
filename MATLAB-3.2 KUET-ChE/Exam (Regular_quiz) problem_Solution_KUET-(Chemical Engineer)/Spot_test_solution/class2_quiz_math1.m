clc
clear
close
f=@(x) ((101325+(135.635*10^-3)/(x.^2))*(x-(.037*10.^-3)))-(8.31415*303);
a=-1;
b= 1;
a1=f(a);
b1=f(b);
for i=1:100
    c=(a+b)/2;
    if f(c)>0 %&& abs(f(c))>.00001
        b=c;
    else
        a=c;
    end
end
c
    