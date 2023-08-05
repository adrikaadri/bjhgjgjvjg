5.
x=input('Enter the number of symbol: ');
N=1:x;
disp('The no. of symbols are:');
disp(N);
P=input('Enter the probabilities:');
disp(P);
s=sort(P);
disp('The sorted probabilities are: ');
disp(s);
codewords=huffmandict(N,s);
disp('The codewords are: ');
for i=1:x
    disp(codewords{i,2});
end
H=0;
for i=1:x
    H=H+(P(i)*log2(1/P(i)));
end
disp('Entropy: ');
disp(H);
for i=1:x
    L(i)=s(i)*length(codewords{i,2});
end
OL=sum(L);
disp('OL:');
disp(OL);

//////////////////6
a=input('Enter Array ');
b=[];
c=1;
for i=1:length(a)-1;
    if(a(i)==a(i+1))
        c=c+1;
    else
        b=[b,c,a(i),];
        c=1;
    end
end
b=[b,c,a(length(a))];
disp(b);








/////////7
x=input('Enter the number of P: ');
P=input('Enter the probabilities:');
disp(P);

%Average Codeword Length
AvgL=0;
for i=1:x
    L(i)=(log2(1/P(i)))+1;
    AvgL=AvgL+(L(i)*P(i));
    
end
b=fix(AvgL);
disp(b);
%Source Entropy
Hx=0;
for i=1:x
    Hx=Hx+(-P(i)*log2(P(i)));
end
disp(Hx);

%Efficiency
n=Hx/b;
disp(n);




////8
clc
clear all;
close all;
%Step-1
k=input('Enter the length of Msg Word');
n=input('Enter the length of the CodeWord:');
P=input('Enter the Parity P');
G=[eye(k) P ];
disp('Generator Matrix: ');
disp(G);
m=input('Enter the Msg Word: ');
c=encode(m,n,k,'linear',G);
disp(c);
%D=decode(c,n,k,'linear',G);
%disp(D);
%Step-2
H=[P' eye(n-k)];
dtable=syndtable(H);
R=input('Enter the recived codeword:');
S_B=rem(R*H',2)
S_D=bi2de(S_B,'left-msb')
if (S_D==0)
disp ('Recived Code Word is Valid')
else
    disp ('Recived Code Word is Invalid')
E=dtable(S_D+1,:)
disp('Corrected Code word is:')
CC=rem(E+R,2)
msg=CC(1:k)
end




////////9
%Encoding for (7,4) Cyclic code
d=[1 0 1 0];
n=7
k=4
g1=cyclpoly(n,k,'max');
disp('g1=');
disp(g1);
gp=poly2sym(g1);
disp('Generator Polynomial:');
disp(gp);
c1=conv(d,g1);
c=mod(c1,2);
disp('The codeword for given message is:'); 
disp(c);
%Decoding
C=encode(d,n,k,'cyclic',g1);
D=decode(C,n,k,'cyclic',g1)

//////////11
x=input('Enter the first string');
y=input('Enter the second string');
x1=double(x);
y1=double(y);
c=0;
for i=1:length(x1)
    if(x1(i)~=y1(i))
        c=c+1;
    end
end
disp(c);
  
