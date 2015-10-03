a=input('enter matrix');
[m,n]=size(a);
b=ones(m,n);
temp=0;
if(m>n)
    k=n;
else
    k=m;
end
for i=1:k  
  
  if(a(i,i)==0)
     
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
      
   end
  
  end
       for j=1:m
          if((j>i)&&(a(j,i)~=0))
     a(j,:)=(a(i,i)/a(j,i))*a(j,:);
     a(j,:)=a(j,:)-a(i,:);
          end
       end
end
disp(a);

    




