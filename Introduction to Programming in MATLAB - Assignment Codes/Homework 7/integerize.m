function class = integerize(A)

class = 'NONE';
biggest = max(max(A));

if biggest <= (2^8 - 1)
    class = 'uint8';
elseif biggest <= (2^16 -1)
    class = 'uint16';
elseif biggest <= (2^32 -1)
    class = 'uint32';
elseif biggest <= (2^64 -1)
    class = 'uint64';
end

end