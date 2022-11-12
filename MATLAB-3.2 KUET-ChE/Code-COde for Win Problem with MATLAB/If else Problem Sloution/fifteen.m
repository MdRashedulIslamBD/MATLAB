clc
clear
close
angle1=input('input angle1:=');
angle2=input('input angle2:=');
angle3=input('input angle3:=');
sum=angle1+angle2+angle3
if sum==180 && angle1>0 && angle2>0 && angle3>0
    disp('valid')
else
    disp('It is not valid')
end