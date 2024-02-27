function B = build_b_matrix(n)
    % Inicjalizacja macierzy B
    B = zeros(n + 1, n + 1);

    % Ustawienie warunku brzegowego
    B(1, 1) = 1;

    for i=2:n+1
        % Glowna przekatna
        B(i, i) = calculate_b(i, i, n);
        % Dolna przekatna
        if i < n+1
            B(i, i+1) = calculate_b(i, i+1, n);
        end
        % Gorna przekatna
        if i > 2
            B(i, i-1) = calculate_b(i, i-1, n);
        end
    end
end