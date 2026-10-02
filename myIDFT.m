function IDFT=myIDFT(x)
    N = length(x);
    IDFT = zeros(1,N);
    k_vec = 0:N-1;
    for n=0:N-1
        IDFT(n+1) = (1/N) * sum(x .* exp(1i * 2* pi * k_vec * n / N));
    end
end