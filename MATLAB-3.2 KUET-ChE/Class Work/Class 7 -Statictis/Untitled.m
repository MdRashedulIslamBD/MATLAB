clc
clear
close
 a=readtable('a.xlsx');
% meanv=mean(a.Distance)
% meadianv=median(a.Time)
% modev=mode(a.ID)
% stdv=std(a.Distance)
% varv=var(a.ID)
% percentiles(a.ID,25)

% q3=prctile(a.Distance,75)
% histogram(a.ID)
plot(a.ID,a.Time)

c=isoutlier(a.Time)
l=find(c)
k=a.Distance(l).*5+5
a.Time(l)=k
hold on
plot(a.ID,a.Time)




