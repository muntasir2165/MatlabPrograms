function c = pitty(ab)

col = size(ab, 1);

c = zeros(1, col);

for i=1:col
    c(i) = sqrt(ab(i,1)^2 + ab(i,2)^2);
end

c = c';

end