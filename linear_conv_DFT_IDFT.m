clc; clear; close all;

x = [1,2,3,4];
h = [1,2,3];

Lx = length(x);
Lh = length(h);
Lc = Lx + Lh - 1;

x_p = [x , zeros(1,Lc-Lx)];
h_p = [h, zeros(1,Lc-Lh)];

dtft_xp = myDFT(x_p);
dtft_hp = myDFT(h_p);

lc = myIDFT(dtft_xp.*dtft_hp);

disp(lc);

