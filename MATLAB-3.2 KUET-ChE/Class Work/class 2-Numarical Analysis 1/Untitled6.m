clc
clear 
close
a=2; %guess for negative f(a)
b=3; %guess for positive f(a)
for i=1:1000
c=(a+b)/2;
p=myfun(c);
if p>0
  b=c;
else
    a=c;
end
end

disp(c)
