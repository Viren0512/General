a=input('enter matrix');
b=input('value matrix');
x1=input('init approx');
d=diag(diag(a));
s=d+tril(a-d);
t=s-a;
x2=inv(s)*(t*x1)+inv(s)*b;
ct=1;
while(norm(a*x2-b)>0.00001)
x1=x2;
x2=inv(s)*(t*x1)+inv(s)*b;
ct=ct+1;
end
disp(x2);
disp(ct);