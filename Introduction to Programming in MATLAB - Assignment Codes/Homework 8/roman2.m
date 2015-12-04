function arabic = roman2(roman_given)

arabic = uint16(0);
romans = struct('I',1,'II',2,'III',3,'IV',4,'V',5,'VI',6,...
    'VII',7,'VIII',8,'IX',9,'X',10);
romans10 = {'I','II','III','IV','V','VI','VII','VIII','IX','X'};

%check for numbers between 1 and 10
for i=1:10
    if strcmp(char(romans10(i)), roman_given)
        arabic = uint16(getfield(romans, roman_given));
        return
    end
end

%check for numbers between 11 and 399
for i=11:399
    roman = '';
    remaining = i;
    while remaining >= 10
        if remaining >= 100
            roman = [roman, 'C'];
            remaining = remaining - 100;
        elseif (remaining >= 90) && (remaining < 100)
            roman = [roman, 'XC'];
            remaining = remaining - 90;
        elseif remaining >= 50;
            roman = [roman, 'L'];
            remaining = remaining - 50;
        elseif (remaining >= 40) && (remaining < 50)
            roman = [roman, 'XL'];
            remaining = remaining - 40;
        elseif remaining >= 10
            roman = [roman, 'X'];
            remaining = remaining - 10;
        end
    end
    if remaining > 0
        roman = [roman, char(romans10(remaining))];
    end
    if strcmp(roman, roman_given)
        arabic = uint16(i);
        return
    end
end

end