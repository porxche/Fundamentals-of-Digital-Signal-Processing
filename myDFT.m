function DFT=myDFT(x)
    N = length(x);
    DFT = zeros(1,N);
    n_vec = 0:N-1;
    for k=0:N-1
        DFT(k+1) = sum(x.*exp(-1i*2*pi*k*n_vec/N));
    end
end