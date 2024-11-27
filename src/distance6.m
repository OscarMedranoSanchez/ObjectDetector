function [d] = distance6(h1,h2)
    d = sum((abs(h1 - h2)).^2);
end
