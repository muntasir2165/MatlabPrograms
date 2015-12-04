function output = sparse_array_out(M, filename)

fid = fopen(filename, 'w');
if fid < 0
    output = false;
    return
end

rows = uint32(size(M, 1));
cols = uint32(size(M, 2));
elements = sum(sum(M ~= 0));

fwrite(fid, rows, 'uint32');
fwrite(fid, cols, 'uint32');
fwrite(fid, elements, 'uint32');
for i=1:rows
    for j=1:cols
        element = M(i,j);
        if element ~= 0
            fwrite(fid, i, 'uint32');
            fwrite(fid, j, 'uint32');
            fwrite(fid, element, 'double');
        end
    end
end
fclose(fid);
output = true;

end