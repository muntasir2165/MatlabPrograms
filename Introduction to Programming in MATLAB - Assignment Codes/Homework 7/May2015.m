function may = May2015

data = calendar(2015, 5);
[row, col] = size(data);
days = max(max(data));
may(1, days) = struct('month', '', 'date', [], 'day', '');
index = 1;
for i=1:row
    for j=1:col
        date = data(i,j);
        if date ~= 0
            may(index).month = 'May';
            may(index).date = date;
            may(index).day = findDay(j);
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