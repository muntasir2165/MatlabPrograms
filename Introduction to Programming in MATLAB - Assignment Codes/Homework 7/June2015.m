function june = June2015

data = calendar(2015, 6);
[row, col] = size(data);
days = max(max(data));
june = cell(days, 3);
index = 1;
for i=1:row
    for j=1:col
        date = data(i,j);
        if date ~= 0
            june{index,1} = 'June';
            june{index,2} = date;
            june{index,3} = findDay(j);
            index = index + 1;
        end   
    end
end

end

function day = findDay(column)

switch(column)
    case 1
        day = 'Sun';
    case 2
        day = 'Mon';
    case 3
        day = 'Tue';
    case 4
        day = 'Wed';
    case 5
        day = 'Thu';
    case 6
        day = 'Fri';
    otherwise
        day = 'Sat';
end

end