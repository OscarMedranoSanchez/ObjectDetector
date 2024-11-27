function [matrix] = createTable256()
matrix = uint8(zeros(256, 256, 16));

for i = 1:7
    for j = 1:256
        for k = [1, 3, 5, 7, 9, 11, 13, 15]         
            matrix(i, j, k) = floor((j-1)/8);
            matrix(i, j, k+1) = matrix(i, j, k);
        end
    end
end

for i = 8:21
    for j = 1:256
        for k = [1, 2, 3, 4]
            matrix(i, j, 4*k-3) = floor((j-1)/32) + 32 + (k-1)*8;
            matrix(i, j, 4*k-2) = matrix(i, j, k);
            matrix(i, j, 4*k-1) = matrix(i, j, k);
            matrix(i, j, 4*k) = matrix(i, j, k);
        end
    end
end

for i = 22:61
    for j = 1:256
        for k = 1:16
            matrix(i, j, k) = floor((j-1)/64) + 64 + (k-1)*4;
        end
    end
end

for i = 62:111
    for j = 1:256
        for k = 1:16
            matrix(i, j, k) = floor((j-1)/64) + 128 + (k-1)*4;
        end
    end
end

for i = 112:256
    for j = 1:256
        for k = 1:16
            matrix(i, j, k) = floor((j-1)/64) + 192 + (k-1)*4;
        end
    end
end

end

