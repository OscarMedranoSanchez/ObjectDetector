function [d] = distance2(h1,h2) % Distancia de Bhattacharyya
    d = -log(sum(sqrt(h1.*h2)));
end

