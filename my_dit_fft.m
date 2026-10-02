function X = my_dit_fft(x)
    N = length(x);

    if bitand(N,N-1) ~= 0
        nearpow = 2^ceil(log2(N));
        x = [x, zeros(1,nearpow-N)];
        N = nearpow;
    end

    if N ==1 
        X = x;
        return;
    end

    x_even = x(1:2:end);
    x_odd = x(2:2:end);

    E = my_dit_fft(x_even);
    O = my_dit_fft(x_odd);
    
    X = zeros(1,N);

    for k = 1:N/2
        twiddle = exp(-1j * 2* pi *(k-1)/N);
        [X(k),X(k+N/2)] = my_radix_bfly(E(k),O(k),twiddle);
    end

end