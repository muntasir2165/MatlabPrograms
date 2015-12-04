function nn = bottom_left(N, n)

row = size(N, 1);
row_start = 0;
difference = row - n;
if difference == 0
    row_start = 1;
else
    row_start = difference+1;
end

nn = N(row_start:row, 1:n);

end