a=input('enter matrix');
[m,n]=size(a);
b=ones(m,n);
temp=0;
if(m>n)
    k=n;
else
    k=m;
end
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
      b(i,:)=a(i,:);
      a(i,:)=a(temp,:);
      a(temp,:)=b(i,:);
   else
       p=p+1;
   end
  end
       for j=1:m
          if((j>i)&&(a(j,p)~=0))
     a(j,:)=(a(i,p)/a(j,p))*a(j,:)-a(i,:);
          end
       end
p=p+1;       
if(p>n)
    break;
end
end
disp(a);

    




