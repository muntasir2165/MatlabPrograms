function indexes = large_elements(X)

[row, col] = size(X);
indexes = zeros(1,0);

for i=1:row
    for j=1:col
        if X(i,j) > (i+j)
            indexes = [indexes; i, j];
        end
    end
end

end