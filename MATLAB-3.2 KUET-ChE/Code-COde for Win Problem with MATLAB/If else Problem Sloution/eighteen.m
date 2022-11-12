clc
clear
close %consier a quadratic euation ax2 +bx+c
a=input('inpu a quadratic euation')
b=input('inpu b quadratic euation')
c=input('inpu c quadratic euation')
d=(b.^2)-(4*a*c)
if d>0
    root1= (-b+root(d))/(2*a)
    root2= (-b-root(d))/(2*a)
elseif d==0
    root =-b/(2*a)
else
     root1= (-b+i*root(-d))/(2*a)
    root2= (-b-i*root(-d))/(2*a)
end
    
    