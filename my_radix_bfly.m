function [A,B] = my_radix_bfly(a,b,twiddle)
    weightedB = twiddle*b;
    A = a + weightedB;
    B = a - weightedB;
end