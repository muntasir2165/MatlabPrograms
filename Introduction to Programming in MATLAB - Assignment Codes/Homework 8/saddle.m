function indices = saddle(M)

indices = [];
[row, col] = size(M);

%the outer for loop is incrementing over the columns and the inner loop is
%incrementing over the rows instead of going the other way around which we
%normally prefer. this is because we want to go through the elements of
%matrix M in column-major order
for j=1:col
    for i=1:row
        element = M(i,j);
        row_max = max(M(i,:));
        col_min = min(M(:,j));
        if (element >= row_max) && (element <= col_min)
            indices = [indices; i, j];
        end
    end
end

end