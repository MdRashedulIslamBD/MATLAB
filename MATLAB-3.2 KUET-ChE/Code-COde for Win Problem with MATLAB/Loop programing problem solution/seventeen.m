%17

clc
clear
n=input('type the number:=');
p=num2str(n)
k=fliplr(p)
if p==k
    disp('number is palindrome')
else
    disp('number is not palindrome')
end