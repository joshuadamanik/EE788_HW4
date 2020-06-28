function val = g(index)
eps_R = 0.7284;
eps_A = 0.2019;
eps_B = 0.2360;

w(1) = 0.1596;
w(2) = 0.1919;
w(3) = 0.1818;
w(4) = 0.1141;
w(5) = 0.3527;

T_A = t_ratio(eps_R, eps_A, w(1) + w(2));
T_B = t_ratio(eps_R, eps_B, w(3) + w(4));

for i = 1:length(w)
    found = false;
    for j = 1:length(index)
        if i == index(j)
            found = true;
            break
        end
    end
    if found == false
        w(i) = 0;
    end
end

u_A = invphi(eps_R, phi(eps_A, w(1) + w(2)) * T_A);
u_B = invphi(eps_R, phi(eps_B, w(3) + w(4)) * T_B);

val = phi(eps_R, u_A + u_B + w(5));
end

