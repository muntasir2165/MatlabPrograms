function output = classify(x)

[row, col] = size(x);

if row == 0 || col == 0 %check if x is an empty matrix
    output = -1;
elseif row == 1 && col == 1 %check if x is a scalar
    output = 0;
elseif (row >= 1 && col == 1) || (row == 1 && col >= 1) %check if x is a vector
    output = 1;
else
    output = 2;
end

end