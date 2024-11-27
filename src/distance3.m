function [d] = distance3(H1,H2) % Distancia de Correlación
    media_H1 = mean(H1);
    media_H2 = mean(H2);
    
    numerador = sum((H1 - media_H1) .* (H2 - media_H2));
    denominador = sqrt(sum((H1 - media_H1).^2) * sum((H2 - media_H2).^2));
    d = 1 - (numerador / denominador);
end


