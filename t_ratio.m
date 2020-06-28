function val = t_ratio(eps_U, eps_L, w)
    phi_U = phi(eps_U, w);
    phi_L = phi(eps_L, w);
    val = phi_U / phi_L;
end