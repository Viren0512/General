a=[0 8;3 5];
  [m,n]=size(a);
  if(m>n)
      k=n;
  else
      k=m;
  end
  p=1;
  r=ones(1,n);
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
                      break;
                  end
              end
          end
      end
      for j=1:m
          if(j>i&&a(j,p)~=0)
              a(j,:)=(a(i,p)/a(j,p))*a(j,:);
              a(j,:)=a(j,:)-a(i,:);
          end
      end
      p=p+1;
      if(p>n)
          break;
      end
  end
  disp(a);
  
  
      
      