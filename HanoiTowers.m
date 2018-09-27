clear;
clc;
disp('Initial state:');
b=[ 1 2 3 4 5 ; 0 0 0 0 0 ; 0 0 0 0 0]';
disp(b);
while b(1,3)~=1;
c=input('Choose the column to extract the number : ');
d=input('Choose the column to insert the number :');
t1=b(:,c);
t2=b(:,d);
 
if   (sum(t2)==0);
t2(position(t2))=t1(position(t1)+1);
t1(position(t1)+1)=0;
b(:,c)=t1;
b(:,d)=t2;
       
elseif  (t1(position(t1)+1)<t2(position(t2)+1))
t2(position(t2))=t1(position(t1)+1);
t1(position(t1)+1)=0;
b(:,c)=t1;
b(:,d)=t2;
           
else
disp('Not a valid move')
b=[ 1 2 3 4 5 ; 0 0 0 0 0 ; 0 0 0 0 0]' ;
disp('Table is transformed to initial state.');
end
disp(b);
end
disp('Game is over.');