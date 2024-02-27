function result = gaussian_quadrature(func, a, b)
    % Punkty i wagi dla 2-punktowej kwadratury Gaussa-Legendre
    x_local = [-1/sqrt(3), 1/sqrt(3)];
    w_local = [1, 1];

    % Skalowanie punktów i wag do przedziału [a, b]
    x = ((b - a) / 2) .* x_local + (b + a) / 2;
    w = ((b - a) / 2) .* w_local;

    result = sum(w .* func(x));
end