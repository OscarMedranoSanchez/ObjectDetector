function [d] = distance(h1,h2)
    d = sum(abs(h1 - h2));
end
