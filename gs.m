v=input('enter matrix');
[m,n]=size(v);
ans=ones(m,n);
for i=1:n
    term=0;
    for j=1:i-1
        term=term+(dot(ans(:,j),v(:,i))/(norm(ans(:,j))*norm(ans(:,j))))*ans(:,j);
    end
    ans(:,i)=v(:,i)-term;
    
end

for i=1:n
    t=norm(ans(:,i));
    ans(:,i)=ans(:,i)/t;
end
disp(ans);
            
        