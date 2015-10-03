a=[1 2 3;1 2 5;2 4 8;1 1 1;-4 14 -26];
[m,n]=size(a);
if(m>n)
    k=n;
else
    k=m;
end
r=ones(1,n);
p=1;
for i=1:k
    temp=0;
    if(a(i,p)==0)
        for t=i+1:m
            if(a(t,p)~=0)
                temp=t;
                break;
            end
        end
        if(temp~=0)
            r(1,:)=a(i,:);
            a(i,:)=a(temp,:);
            a(temp,:)=r(1,:);
        else
            p=p+1;
        end
    end
    for j=1:m
        if(j>i&&a(j,p)~=0)
            a(j,:)=(a(i,p)/a(j,p))*a(j,:);
            a(j,:)=a(j,:)-a(i,:);
        end
    end
    p=p+1;
end
disp(rref(a));