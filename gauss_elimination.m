a=input('enter matrix');
ct=0;
[m,n]=size(a);
b=ones(n);
temp=0;

for i=1:m
    ct=0;
    temp=0;
    for k=i:n
    if(a(i,k)==0)
        ct=ct+1;
        for t=i+1:m
            if(a(t,i)~=0)
                temp=t;
                break;
            end
        end
        if(temp~=0)
           b(i,:)=a(i,:);
      a(i,:)=a(temp,:);
      a(temp,:)=b(i,:);
      
             break;
        else
            k=k+1;
        end
        
    else
        break;
    end
    end
    
    if(ct>0)
         a(i,:)=a(i,:)/a(i,k);
        for j=1:m
        if(j>i)
            a(j,:)=a(j,:)-(a(j,k)*a(i,:));
        end
        end
    else
         a(i,:)=a(i,:)/a(i,i);
         for j=1:m
        if(i~=j)
            a(j,:)=a(j,:)-(a(j,i)*a(i,:));
        end
         end
    end
   
end
  disp(a);      
   
   
    
    