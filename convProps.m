clc; clear; close all;

x1 = [1,2,3,2,3,2,3,23];
x2 = [4,5,6,7,3];
x3 = [2,3,5,6,9];

[x1cx2, Lx1cx2] = myConv(x1,x2);
[x1cx3, Lx1cx3] = myConv(x1, x3);

[x1_x2cx3, Lx1_x2cx3] = myConv(x1,x2+x3);

disp(['RHS: ' num2str(x1_x2cx3)]);
disp(['LHS: ' num2str(x1cx2+x1cx3)]);

if max(abs(x1_x2cx3-(x1cx3+x1cx2))) < 1e-10
    disp("Distributive!!!!!!!!!!!!!!!!!")
else 
    disp("This wont run anyways ;)")
end

x1cx2_cx3 = myConv(x1cx2,x3);
x2cx3 = myConv(x2,x3);
x1c_x2cx3 = myConv(x1,x2cx3);

disp(['LHS: ' num2str(x1cx2_cx3)]);
disp(['RHS: ' num2str(x1c_x2cx3)]);

if max(abs(x1cx2_cx3 - x1c_x2cx3)) < 1e-10
    disp('Associative!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
else 
    disp('i have no time to prepare for placements man :(')
end


