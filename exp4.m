p=[0.9 0.1;0.1 0.9];
c=1;
h=0;
for i=1:2;
    c=c+(-p(i)*log2(p(i)));
end
h=-p(2,1)*log2(p(2,1))-p(2,2)*log2(p(2,2));
disp(c);
disp(h);