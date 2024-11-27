function [NovaIm] = rgb2dsh(imag, Table128)

R = imag(:, :, 1);
G = imag(:, :, 2);
B = imag(:, :, 3);
S = (max(max(R, G), B) + min(min(R, G), B)) / 2;
D = max(max(R, G), B) - min(min(R, G), B);

imag = rgb2hsv(imag);
% H = floor((255/32)*imag(:,:,1)); % for 128 bins
H = floor((255/16)*imag(:,:,1)); % for 256 bins

% Quantificar imatge
for i = 1:480
    for j = 1:640
        NovaIm(i, j) = Table128(D(i,j)+1, S(i,j)+1, H(i,j)+1);
    end
end

end

