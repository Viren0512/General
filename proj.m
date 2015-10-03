x=input('enter vector');
a=[3 1 -1;1 2 0;0 1 2;1 1 -1];
term=0;
for i=1:2
    term=term+(dot(x,a(:,i))/(norm(a(:,i))*norm(a(:,i))))*a(:,i);
end
disp(term);