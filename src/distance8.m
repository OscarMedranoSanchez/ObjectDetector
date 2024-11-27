function [d] = distance8(H1, H2) % Divergencia de Kullback-Leibler
    % Añadir una pequeña constante epsilon para evitar log(0) y división por cero
    epsilon = 1e-10;
    
    % Normalizar los histogramas para que sumen 1 (asegurarse de que sean distribuciones de probabilidad)
    H1 = H1 / sum(H1);
    H2 = H2 / sum(H2);
    
    % Calcular la divergencia de Kullback-Leibler
    d = sum(H1 .* log((H1 + epsilon) ./ (H2 + epsilon)));
end
