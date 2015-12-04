function coded = codeit(txt)

coded = '';
for letter=txt
    value = uint8(letter);
    %check for upper case letters
    if (value >= 65) && (value <= 90)
        increment = mod(value, 65);
        coded = [coded, char(90-increment)];
    %check for lower case letters
    elseif (value >= 97) && (value <= 122)
            increment = mod(value, 97);
            coded = [coded, char(122-increment)];
    else
        coded = [coded, letter];
    end
end
    
end