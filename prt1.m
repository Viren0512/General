a=input('enter matrix');
[m,n]=size(a);
if(m>n)
    k=n;
else
    k=m;
end
c=a;

temp=ones(m,n);
for i=1:k
    if(a(i,i)==0)
        for t=i+1:m
            if(a(t,i)~=0)
                temp(i,:)=a(i,:);
                a(i,:)=a(t,:);
                a(t,:)=temp(i,:);
                break;
            end
        end
    end
    for j=1:m
        if((j>i)&&a(j,i)~=0)
            a(j,:)=(a(i,i)/a(j,i))*a(j,:);
            a(j,:)=a(j,:)-a(i,:);
        end
    end
end
disp(a);