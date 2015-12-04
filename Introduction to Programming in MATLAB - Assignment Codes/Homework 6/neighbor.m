function output = neighbor(v)

[row, col] = size(v);
%check if v is not a vector
if (row > 1) || (col < 2) 
    output = zeros(1,0);
    return
end

output = zeros(row, col-1);
for i=1:col-1
    output(i) = abs(v(i) - v(i+1));
end

end