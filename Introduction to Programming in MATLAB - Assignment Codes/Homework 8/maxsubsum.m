function [row, col, numrows, numcols, summa] = maxsubsum(A)

[rowA, colA] = size(A);
row = 0;
col = 0;
numrows = 0;
numcols = 0;
summa = -Inf;

for startX=1:rowA
    for startY=1:colA
        for i=1:rowA
            for j=1:colA
                subMatrix = A(startX:i, startY:j);
                current_sum = sum(sum(subMatrix));
                if current_sum > summa
                    summa = current_sum;
                    row = startX;
                    col = startY;
                    numrows = i - startX + 1;
                    numcols = j - startY + 1;
                end
            end
        end
    end
end

end