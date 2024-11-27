function [matrix] = createTable()
matrix = uint8(zeros(256, 256, 8));

for i = 1:7
    for j = 1:256
        for k = [1, 3, 5, 7]         
            matrix(i, j, k) = floor((j-1)/16);
            matrix(i, j, k+1) = matrix(i, j, k);
        end
    end
end

for i = 8:21
    for j = 1:256
        for k = [1, 2, 3, 4]
            matrix(i, j, 2*k-1) = floor((j-1)/64) + 16 + (k-1)*4;
            matrix(i, j, 2*k) = matrix(i, j, k);
        end
    end
end

for i = 22:61
    for j = 1:256
        for k = 1:8
            matrix(i, j, k) = floor((j-1)/64) + 32 + (k-1)*4;
        end
    end
end

for i = 62:111
    for j = 1:256
        for k = 1:8
            matrix(i, j, k) = floor((j-1)/64) + 64 + (k-1)*4;
        end
    end
end

for i = 112:256
    for j = 1:256
        for k = 1:8
            matrix(i, j, k) = floor((j-1)/64) + 96 + (k-1)*4;
        end
    end
end

end

