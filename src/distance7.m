function [d] = distance7(h1,h2)
    product = sum(h1.*h2);
    norm_hist1 = sqrt(sum(h1.^2));
    norm_hist2 = sqrt(sum(h2.^2));
    similarity = product / (norm_hist1 * norm_hist2);
    d = 1 - similarity;
end
