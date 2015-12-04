function generation = generationXYZ(birth_year)

if birth_year < 1966
    generation = 'O';
elseif birth_year >= 1966 && birth_year <= 1980
    generation = 'X';
elseif birth_year >= 1981 && birth_year <= 1999
    generation = 'Y';
elseif birth_year >= 2000 && birth_year <= 2012
    generation = 'Z';
else
    generation = 'K';
end

end