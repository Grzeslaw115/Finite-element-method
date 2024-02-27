function result = calculate_b(u, v, n)
    h = 2 / n;
    u = u - 1; % zmiana indeksowania
    v = v - 1;

    % Granice calkowania zalezne od elemntu macierzy
    if u == v % Główna przekątna
        a = (u - 1) * h;
        b = (u + 1) * h;
    elseif u == v - 1 % Górna przekątna
        a = u * h;
        b = a + h;
    elseif u == v + 1 % Dolna przekątna
        b = u * h;
        a = b - h;
    else
        a = 0;
        b = 0;
    end
    if u == n && v == n
        a = 2 - h;
        b = 2;
    end

    func = @(x) derivative_of_basis_function(u, n, x) .* derivative_of_basis_function(v, n, x) - linear_basis_function(u, n, x) .* linear_basis_function(v, n, x);

    uv_2 = linear_basis_function(u, n, 2) * linear_basis_function(v, n, 2);

    result = gaussian_quadrature(func, a, b) - uv_2;
end