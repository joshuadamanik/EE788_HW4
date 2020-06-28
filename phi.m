function val = phi(eps,u)
    if eps == 1
        if u == 0
            val = 0;
        else
            val = 1;
        end
    elseif eps == 0
        if u == 1
            val = 1;
        else
            val = 0;
        end
    else
        s = ((1-eps).^2) / (eps.^2);
        val = ((s.^u)-1)/(s-1);
    end
end

