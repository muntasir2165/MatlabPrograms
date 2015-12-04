function [time, km] = light_time(miles)

entries = size(miles, 2);
time = zeros(1, entries);
km = zeros(1, entries);

for i=1:entries
    distance_km = miles(i) * 1.609;
    km(i) = distance_km;
    time(i) = (distance_km/300000)/60;
end

end