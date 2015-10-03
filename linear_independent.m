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
  c=0;
  s=0;
  if(a(i,i)==0)
     s=s+1;
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
      c=c+1;
   end
  
  end
  if((c==0&&s==0)||(c==1&&s==1))
       for j=1:m
          if((j~=i)&&(a(j,i)~=0))
     a(j,:)=(a(i,i)/a(j,i))*a(j,:);
     a(j,:)=a(j,:)-a(i,:);
          end
       end
end
end
disp(a);