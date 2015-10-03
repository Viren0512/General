b=input('enter matrix');
a=b';

temp=ones(m,n);
k=min(m,n);
for i=1:k
    if(a(i,i)==0)
        for v=(i+1):m
            if(a(v,i)~=0)
               temp(i,:)=a(i,:);
               a(i,:)=a(v,:);
               a(v,:)=temp(i,:);
               break;
            end
        end
    end
       
    for j=1:m
        if(j>i)
 a(j,:)=a(j,:)-((a(j,i)/a(i,i))*a(i,:));
        end
    end
end
 disp(a);
