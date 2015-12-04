function triangle = bell(n)

if (n <= 0) || (mod(n,1) ~= 0)
    triangle = [];
    return
end

triangle = zeros(n);
triangle(1,1) = 1;

if n > 1
    triangle(2,1) = 1;
else
    return
end

for i=1:n-1
    for j=1:i
        add = triangle(i,j) + triangle(i+1, j);
        triangle(i+1,j+1) = add;
    end
    triangle(i+2, 1) = add;
end

triangle = triangle(1:end-1, :);

col=size(triangle,2);
for j=1:col
    zero = sum((triangle(:,j) == 0));
    modified_column = [triangle(zero+1:end,j); triangle(1:zero, j)];
    triangle(:,j) = modified_column;
end

end