function dh2dt = fcn(h1,h2)
q1= (5*abs(h1)^.5) -(5*abs(h2)^.5);
q2=5*abs(h2)^.5 ;
A= (pi*10^2) /4;

dh2dt = (q1-q2)/A;
