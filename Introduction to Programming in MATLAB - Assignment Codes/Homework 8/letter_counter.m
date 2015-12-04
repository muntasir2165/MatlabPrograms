function total = letter_counter(file_name)

fid = fopen(file_name, 'r');
if fid < 0
    total = -1;
    return
end

total = 0;
line = fgets(fid);
while ischar(line)
    total = total + count_letters(line);
    line = fgets(fid);
end

fclose(fid);
end

function total_letters = count_letters(string)

total_letters = 0;
for i=string
    if isletter(i)
        total_letters = total_letters + 1;
    end
end

end