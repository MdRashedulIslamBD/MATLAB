clc
clear
close
year=input('input year:-');
if (rem(year,4)==0 && rem(year,100)~=0 ) || rem(year,400)==0
    fprintf(' Year is leapyear');
%elseif  rem(year,400)==0
   % fprintf(' year is leap year')
else
    fprintf('year is not leapyear');
end