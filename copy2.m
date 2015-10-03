a=input('enter matrix');
b=a';
[m,n]=size(b);
temp=ones(m,n);
k=min(m,n);
for i=1:k
    if(b(i,i)==0)
        for v=(i+1):m
            if(b(v,i)~=0)
               temp(i,:)=b(i,:);
               b(i,:)=b(v,:);
               b(v,:)=temp(i,:);
               break;
            end
        end
    end
       
    for j=1:m
        if(j>i)
 b(j,:)=b(j,:)-((b(j,i)/b(i,i))*b(i,:));
        end
    end
end
 disp(b);
 c=0;
for k=1:m
for s=1:n
if(b(k,s)==0)
c=c+1;
end
end
if(c<n)
disp(b(k,:));
end
c=0;
end