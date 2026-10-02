function CTFT = myCTFT(x,t,f)
    CTFT = zeros(1,length(f));
    for i=1:length(f)
        integrand = x.*exp(-1i*2*pi*f(i)*t);
        integral_array = cumtrapz(t,integrand);
        CTFT(i)=integral_array(end);
    end
end