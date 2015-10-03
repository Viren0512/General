a=input('enter matrix');
[m,n]=size(a);
v=ones(m,n);
for i=1:n
    term=0;
    for j=1:i-1
        term=(term+dot(v(:,j),a(:,i))*v(:,j))/(norm(v(:,j))*norm(v(:,j)));
    end
    v(:,i)=a(:,i)-term;
end

disp(v);
        
    