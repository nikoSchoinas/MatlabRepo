l=input('give the number of digits: ');
digits(l+1)
e=2.71;
n=0;
x=1;
for i=1:l
    x=x*0.1*i/i;
end
tic
while (abs(exp(1)-e)>x)
    e=sum((1+1/n)^n);
    n=n+1;
end
toc
disp(['number of iterations:',num2str(n)]);
disp('value of "e" from Stirling''s type is:');
disp(vpa(exp(1)));
disp('Matlab''s value:');
disp(vpa(e));

