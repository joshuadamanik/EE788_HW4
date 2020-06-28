function val = invphi(eps, phi)
    if eps == 1
        if phi == 0
            val = 0;
        else
            val = rand();
        end
    elseif eps == 0
        if phi == 1
            val = 1;
        else
            val = rand();
        end
    else
        s = (1-eps).^2 / eps.^2;
        sympref('FloatingPointOutput',true);
        syms u
        val = solve(phi == (s.^u-1)/(s-1), u);
    end
end

