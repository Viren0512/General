
    
counter=0;
ct=0;
for i=1:m
    counter=0;
    for j=1:n
        if(a(i,j)==0)
            counter=counter+1;
        end
    end
    if(counter==n)
        ct=1;
        break;
    end
end
if(ct==0)
    disp('li');
else
    disp('ld');
end




