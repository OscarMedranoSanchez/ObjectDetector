% function [d] = distance5(H1,H2) % Distancia Chi-cuadrado
%     distancia_h1_h2 = sum((H1 - H2).^2 ./ (H1));
%     distancia_h2_h1 = sum((H2 - H1).^2 ./ (H2));
%     
%     d = (distancia_h1_h2 + distancia_h2_h1) / 2;
% end

function [d] = distance5(H1, H2)
    % Evitar la división por cero añadiendo una pequeña constante epsilon
    epsilon = 1e-10;
    d = sum(((H1 - H2).^2) ./ (H1 + H2 + epsilon));
end
