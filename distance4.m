function [d] = distance4(H1,H2) % Distancia de Hellinger
    H1 = H1 / sum(H1);
    H2 = H2 / sum(H2);

    d = sqrt(1 - sum(sqrt(H1 .* H2)));
end

