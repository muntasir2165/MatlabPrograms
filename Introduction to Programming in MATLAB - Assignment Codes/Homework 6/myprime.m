function is_prime = myprime(n)

is_prime = true;
factor = 0;

for i =1:n
    if mod(n, i) == 0
        factor = factor + 1;
    end
end

%if n has more than 2 factors (i.e., factors other than 1 and n itself),
%then it is not a prime number
if factor > 2
    is_prime = false;
end

end