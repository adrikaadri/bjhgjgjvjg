1.
i=input('Enter no. of elements=');
p=input('Enter Probabilities=');
sum=0;
entropy = zeros(1,i);
for n=1:i
    H=sum+((p(n)*log2(1/p(n))));
    entropy(n)=H;
    sum=H;
end
disp('H(x):');
disp(H);
% Plotting entropy vs probability
figure;
plot(p, entropy, 'bo-', 'LineWidth', 2); 
xlabel('Probability');
ylabel('Entropy (bits)');
title('Entropy vs Probability');
grid on;
2.
pxy=[0.1 0.15 0.05 ;0.2 0.07 0.08 ;0.01 0.04 0.3];
py=sum(pxy);
hy=0;
for i=1:3
 hy=hy+(-py(i)*log2(py(i)));
end
disp(hy);
px=sum(pxy,2);
hx=0;
for i=1:3
 hx=hx+(-px(i)*log2(px(i)));
end
disp(hx);
hxy=0;
for i=1:3
 for j=1:3 
 hxy=hxy+(-pxy(i,j)*log2(pxy(i,j)));
 end
end
disp(hxy);
