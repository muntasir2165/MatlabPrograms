function vector = sort3(x, y, z)

vector = [x, y, z];
total = length(vector);

for i=1:total
    smallest = vector(i);
    for j = i+1:total
        current = vector(j);
        %switch the position of the two elements such that they are in
        %ascending order
        if current < smallest
            vector(i) = current;
            vector(j) = smallest;
            smallest = current;
        end
    end
end

end
