function M = sparse_array_in(filename)

fid = fopen(filename, 'r');
if fid < 0
    M = [];
    return
end

rows = fread(fid, 1, 'uint32');
cols = fread(fid, 1, 'uint32');
elements = fread(fid, 1, 'uint32');
M = zeros(rows, cols);
for element=1:elements
    row = fread(fid, 1, 'uint32');
    col = fread(fid, 1, 'uint32');
    M(row,col) = fread(fid, 1, 'double');
end

end