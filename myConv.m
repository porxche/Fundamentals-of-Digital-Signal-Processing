function [y,Ly] = myConv(x,h)
    
    Lx = length(x);
    Lh = length(h);
    
    Ly = Lx + Lh - 1;
    
    y = zeros(1,Ly);
    
    
    for n = 1:Ly
        for k = 1:Lx
            if(n-k+1>=1 && n-k+1<=Lh)
                y(n)=y(n)+x(k)*h(n-k+1);
            end
        end
    end
end

