function average = moving_average(x)

persistent values;

if length(values) < 25
    values = [values, x];
else
    values = [values(2:25), x];
end

average = mean(values);

end