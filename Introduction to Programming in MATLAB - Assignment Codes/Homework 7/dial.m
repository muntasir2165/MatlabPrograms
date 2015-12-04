function phone_number = dial(string)

phone_number = '';
for button=string
    if ~isempty(strfind('1234567890#* ', button))
        phone_number = [phone_number, button];
    elseif ~isempty(strfind('ABC', button))
        phone_number = [phone_number, '2'];
    elseif ~isempty(strfind('DEF', button))
        phone_number = [phone_number, '3'];
    elseif ~isempty(strfind('GHI', button))
        phone_number = [phone_number, '4'];
    elseif ~isempty(strfind('JKL', button))
        phone_number = [phone_number, '5'];
    elseif ~isempty(strfind('MNO', button))
        phone_number = [phone_number, '6'];
    elseif ~isempty(strfind('PRS', button))
        phone_number = [phone_number, '7'];
    elseif ~isempty(strfind('TUV', button))
        phone_number = [phone_number, '8'];
    elseif ~isempty(strfind('WXY', button))
        phone_number = [phone_number, '9'];
    elseif ~isempty(strfind('()-', button))
        phone_number = [phone_number, ' '];
    else
        phone_number = [];
        break
    end
end

end