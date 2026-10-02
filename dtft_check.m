clc; clear; close all;

x = [1,2,3] + 1i*[6,5,4];
n = 0:length(x)-1;
w = linspace(-pi,pi,500);
xdtft = myDTFT(x,n,w);

figure('Name','window1');
stem(n, x,'filled','LineWidth',1.5);
xlabel('time');
ylabel('amplitude');
title('ORiignal signall');

figure('Name', 'THE DTFTTTTTTTTTT');
plot(w,abs(xdtft));
xlabel('angular freq');
ylabel('magnitude of dtft');
title('DTFT OMG');
