clear;
clc;
i=1;                              
while (i==1)
    x=input('Insert amount:');
    if x<0 || mod(x,5)~=0;
        disp('Not a valid amount. Try again...');
    else
        i=0;
    end
end
y=[ 500 200 100 50 20 10 5 ];
for i=1:7;
    z(i)=div(x,y(i));
    x=x-y(i)*z(i);
end
disp('The given amount is splitted in: ');
for i=1:7;
    if (z(i)~=0);
        disp([num2str(z(i)),' banknote(s) of ',num2str(y(i)),' euros']);
    end
end

    
