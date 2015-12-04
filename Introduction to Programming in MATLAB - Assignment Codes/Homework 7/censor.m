function cell_vector_modified = censor(cell_vector, string)

cell_vector_modified = cell(0);
index = 1;
[row, col] = size(cell_vector);
for i=1:row
    for j=1:col
        text = cell_vector{i,j};
        if isempty(strfind(text, string))
            cell_vector_modified{index} = text;
            index = index + 1;
        end
    end
end

end