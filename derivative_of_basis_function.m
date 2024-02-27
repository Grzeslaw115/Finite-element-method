function dphi = derivative_of_basis_function(i, n, x)
    h = 2 / n;
    x_i = i * h;

    dphi = arrayfun(@(x_val) compute_derivative(x_val, i, h, x_i), x);
end

function dphi_val = compute_derivative(x_val, i, h, x_i)
    % Oblicza pochodną funkcji bazowej dla pojedynczego x_val
    if x_val >= (i - 1) * h && x_val < x_i
        dphi_val = 1 / h;
    elseif x_val > x_i && x_val <= (i + 1) * h
        dphi_val = -1 / h;
    else
        dphi_val = 0;
    end
end