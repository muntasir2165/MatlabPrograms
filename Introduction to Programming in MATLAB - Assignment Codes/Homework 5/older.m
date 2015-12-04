function output = older(y1, m1, d1, y2, m2, d2)

person1 = datenum(y1, m1, d1);
person2 = datenum(y2, m2, d2);

%is person1 older than person2?
if person1 < person2
    output = 1;
%are they the same age?
elseif person1 == person2
    output = 0;
%person1 is younger than person2
else
    output = -1;
end

end