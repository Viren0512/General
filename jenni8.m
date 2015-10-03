a=[4 2 3;2 4 6;3 6 4];
[m,n]=size(a);
l=zeros(m,n);
for i=1:m
    for j=1:i
         term1=0;
    term2=0;
        for k=1:j-1
             term1=term1+l(j,k)^2;
            if(i>j)
                term2=term2+l(j,k)*l(i,k);
            end
           
        end
        l(j,j)=(a(j,j)-term1)^0.5;
        if(i>j)
        l(i,j)=(a(i,j)-term2)/l(j,j);
        end
    end
end
disp(l);
disp(l*l');