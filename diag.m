a=input('enter matrix');
[n,n]=size(a);
[p,l]=eig(a);
count=0;
for i=1:n
    for j=1:n
        if(j~=i)
        if(l(i,i)==l(j,j))
            count=count+1;
        end
        end
    end
end
if(count==0)
    disp('diag');
else
    if(rank(p)<n)
        disp('non');
    else
        disp('diag');
    end
end