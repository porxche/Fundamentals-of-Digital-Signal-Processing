clc; clear; close all;

wc = 1;
M = [10,50,100,150];
w = linspace(-pi,pi,500);

for i=1:length(M)
    n=-M(i):M(i);
    x = sin(wc*n)./(pi*n);
    x(n==0)=wc/pi;
    subplot(2,2,i);
    plot(w,abs(myDTFT(x,n,w)),'r','LineWidth',1.5);
    title(['M =' num2str(M(i))]);
    xlabel('w');
    ylabel('magnitude of dtft')
end