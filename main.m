function main()
    n =  input("Podaj n: ");
        
    % Stworzenie ukladu rownan i jego rozwiazanie
    B = build_b_matrix(n);
    L = build_l_vector(n);
    result = B\L;

    % Wizualizacja wyniku
    x = linspace(0, 2, n+1);
    plot(x, result);
    title('Wizualizacja rozwiązania dla n = ', n);
    xlabel('x');
    ylabel('u(x)');
    grid("on");
end