function sums = square_wave(n)

sums = zeros(1, 1001);
step_size = ((4*pi) - 0)/(1001-1);
index = 0;
for t=0:step_size:4*pi
    index = index + 1;
    current_sum = 0;
    for k=1:n
        increment = sin((2*k - 1) * t)/(2*k - 1);
        current_sum = current_sum + increment;
    end
    sums(index) = current_sum;
end

end