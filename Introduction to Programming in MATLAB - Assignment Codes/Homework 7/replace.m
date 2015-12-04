function modified_cell_vector = replace(cell_vector, c1, c2)

modified_cell_vector = cell_vector(:,:);
for index=1:length(cell_vector)
    current = cell_vector(index);
    current_string = char(current);
    if ~isempty(strfind(current_string, c1))
        modified_string = replace_string(current_string, c1, c2);
        modified_cell_vector(index) = cellstr(modified_string);
    end
end

end


function modified_string = replace_string(string, c1, c2)

modified_string = '';
for letter=string
    if letter == c1
        modified_string = [modified_string, c2];
    else
        modified_string = [modified_string, letter];
    end
end
end