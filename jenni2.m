b=[1 -2 0 0 3;2 -5 -3 -2 6;0 5 15 10 0;2 6 18 8 6];
   a=b';
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
              for w=p+1:n
                  if(a(i,w)~=0)
                      p=w;
                      break;
                  end
              end
          end
      end
      for j=1:m
          if(j~=i&&a(j,p)~=0)
              a(i,:)=a(i,:)/a(i,p);
              a(j,:)=a(j,:)-(a(j,p)*a(i,:));
          end
      end
      p=p+1;
      if(p>n)
          break;
      end
  end
  disp(a);
  
  
      
      