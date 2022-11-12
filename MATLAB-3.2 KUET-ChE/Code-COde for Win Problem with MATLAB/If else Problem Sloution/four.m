clc
clear
clear
n=input('give input number');
p=mod(n,5);
q=mod(n,11);
if p==0 && q==0
    disp('ok')
else
    disp('not ok')
end