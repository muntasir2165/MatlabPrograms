function M = randomness(limit, n, m)

allowed_instances = 0;

if limit >= n*m
    allowed_instances = limit/(n*m);
else
    allowed_instances = (n*m)/limit;
end

allowed_instances = fix(allowed_instances);
M = zeros(n, m);
index = 1;

for i=1:limit
    for j=1:allowed_instances
        M(index) = i;
        index = index + 1;
    end
end

if (index == n*m) && (M(index) == 0)
    M(index) = 1;
end
end
