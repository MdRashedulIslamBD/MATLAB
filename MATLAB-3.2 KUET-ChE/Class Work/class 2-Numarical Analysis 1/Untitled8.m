clc
clear
close
a=2;%guess for negative f(a)
b=3;%guess for positive f(a)
a1=myfun(a);
b1=myfun(b);
for i=1:1000
c=(((a*b1)-(b*a1))/(b1-a1));
p=myfun(c);
if p>0
    b=c;
else
    a=c;
end
end
disp(c)
