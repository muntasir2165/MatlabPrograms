function v = int_col(n)

v = zeros(1, n);

done = false;
while ~done
    v = (randperm(n, n))';
    success = true;
    for i=1:n
        if v(i) == i
            success = false;
            break;
        end
    end
    if success
        done = true;    
    end
end

end