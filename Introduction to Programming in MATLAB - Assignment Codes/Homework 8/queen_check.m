function state = queen_check(board)

[row, col] = size(board);
state = true;

%check rows
for i=1:row
    if sum(board(i, :)) > 1
        state = false;
        return;
    end
end

%check columns
for j=1:col
    if sum(board(:, j)) > 1
        state = false;
        return;
    end
end

%check diagonals
for startX=1:row
    if ~state
        break
    end
    for startY=1:col
        if ~state
            break
        end
        for i=1:row
            if ~state
                break
            end
            for j=1:col
                numrows = i - startX + 1;
                numcols = j - startY + 1;
                if numrows == numcols
                    subMatrix = board(startX:i, startY:j);
                    flipped_subMatrix = fliplr(subMatrix);
                    if (sum(diag(subMatrix)) > 1) || (sum(diag(flipped_subMatrix)) > 1)
                        state = false;
                        break
                    end
                end
            end
        end
    end
end

end