clc
clear
close
k=10
a=[ 10 11 13 -5 6 9 100];
b=find(isoutlier(a));
a(b)=10*3-5;
a