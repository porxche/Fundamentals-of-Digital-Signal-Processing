clc; clear; close all;

Fs = 5000;
f_i = [10,20,30,40,50];
a_i = [1,2,3,4,5];

T = 1;
t = 0:1/Fs:T-1/Fs;
x = zeros(1,length(t));

for i=1:5
    x = x + a_i(i) * cos(2*pi*f_i(i)*t);
end

f_eval = linspace(-150,150,1000);
xctft = myCTFT(x,t,f_eval);

Fs_dis = 200;
t_dis = 0:1/Fs_dis:1-1/Fs_dis;
n = 0:length(t_dis)-1;

x_dis = zeros(1,length(t_dis));

for i=1:5
    x_dis = x_dis + a_i(i) * cos(2*pi*f_i(i)*t_dis);
end

w_eval = linspace(-2*pi,2*pi,1000);
xdtft = myDTFT(x_dis,n,w_eval);

subplot(2,1,1);
plot(f_eval,abs(xctft),'c',LineWidth=1.5);
xlabel('freq');
ylabel('Magnitude of ctft');
title('CTFT');

subplot(2,1,2);
plot(w_eval,abs(xdtft),'r',LineWidth=1.5);
xlabel('angular freq');
ylabel('Magnitude of dtft');
title('DTFT');


    