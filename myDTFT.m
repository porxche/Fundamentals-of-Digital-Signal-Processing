function DTFT = myDTFT(x,n,w)
   DTFT = zeros(1,length(w));
   for i = 1:length(w)
       DTFT(i) = sum(x .* exp(-1i * w(i) *n) );
   end
end