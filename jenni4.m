c=[0 1;1 0;2 1;3 1];
d=[6;0;0;-4];
a1=c'*c;
[m,n]=size(a1);
a=[a1,eye(m)];
b=ones(m,n);
temp=0;
p=1;
for i=1:m  
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
          if((j~=i)&&(a(j,p)~=0))
   a(i,:)=a(i,:)/a(i,p);
   a(j,:)=a(j,:)-(a(j,p)*a(i,:));
          end
       end
p=p+1;       
if(p>n)
    break;
end
end
ans=a(:,m+1:2*m);
X=ans*(c'*d);
disp(X);