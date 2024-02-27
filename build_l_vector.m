function L = build_l_vector(n)
    L = zeros(n+1, 1);
    L(1) = 1; % Warunek brzegowy

    for v = 2:n+1
        h = 2 / n;
        a = (v - 2) * h; % ustalanie granic całkowania
        b = v * h;

        func = @(x) sin(x) .* linear_basis_function(v-1, n, x);
        L(v) = gaussian_quadrature(func, a, b) - calculate_b(1, v, n) + 5 * linear_basis_function(v, n, 2); %wynika z shiftu;
    end
end