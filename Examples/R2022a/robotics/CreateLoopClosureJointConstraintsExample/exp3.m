clc

t=-3:1:10;  

y=[zeros(1,3),ones(1,1),ones(1,10)];

y1=[zeros(1,3),zeros(1,1),ones(1,10)];

figure 

subplot(2,1,1); 
plot(t,y)

subplot(2,1,2); 
stem(t,y);  

figure 

subplot(2,1,1); 
plot(t,y1)

subplot(2,1,2); 
stem(t,y1);  

%title('unit impulse');  

