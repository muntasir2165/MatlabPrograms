function board = checkerboard(n, m)

row = ones(1, m);

for i=2:m
    row(i) = row(i) - row(i-1);
end

if mod(m, 2) == 0
    row_reversed = fliplr(row);
else
    row_reversed = (row == 0);
end

board = zeros(n, m);
for i=1:n
    if mod(i, 2) ~= 0
        board(i, :) = row;
    else
        board(i, :) = row_reversed;
    end
end

end