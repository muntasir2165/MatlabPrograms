function n = one_per_n(x)

n = 1;
sum = 0;
while true
    sum = sum + (1/n);
    if sum >= x
        break
    elseif n >= 10000
        n = -1;
        break
    end
    n = n+1;
end

end