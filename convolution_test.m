clc;
clear all;
close all;

Fs = 1000;
T = 3;
t = 0:1/Fs:T-1/Fs;
N = Fs*T;
f = 50;
x = 5*t;
y = -t;

[xcy,Lxcy] = myConv(x,y);
conv_axis = (0:Lxcy-1)*(1/Fs);

subplot(3,1,1);
plot(t,x,'c','LineWidth',1.5);
title('x(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2);
plot(t,y,'r','LineWidth',1.5);
title('y(t)');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3);
plot(conv_axis,xcy*(1/Fs),'g','LineWidth',1.5);
title('(x * y)(t)');
xlabel("Time");
ylabel("Amplitude");



