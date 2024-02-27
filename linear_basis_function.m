function phi = linear_basis_function(i, n, x)
    h = 2 / n;
    x_i = i * h;
  
    phi = arrayfun(@(x_val) compute_phi(x_val, i, h, x_i), x);
end

function phi_val = compute_phi(x_val, i, h, x_i)
    % Funkcja obliczająca wartość phi dla pojedynczego x_val
    if x_val >= (i - 1) * h && x_val <= x_i % Część 'rosnąca'
        phi_val = (x_val - (i - 1) * h) / h;
    elseif x_val > x_i && x_val <= (i + 1) * h % Część 'malejąca'
        phi_val = ((i + 1) * h - x_val) / h;
    else
        phi_val = 0;
    end
end