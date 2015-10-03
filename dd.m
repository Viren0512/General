A=input('Enter a square matrix\n');
n=size(A);
D=diag(diag(A));
b=input('Enter a n cross 1 matrix\n');
x0=input('Enter an initial guess\n');
p=0;
l=tril(A,-1);
u=triu(A,1);
%if (norm((D+l)\u)>1)
 %   disp('no')
  %  return;
%end
norm(A)
while norm(A*x0-b)>10^-5
    x1=(D+l)\b-(D+l)\(u*x0);
    x0=x1;
    p=p+1;
end
x0
p
norm(A*x0-b)