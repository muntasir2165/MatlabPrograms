function [even, odd] = separate_by_two(A)

A_vector = A(:);
even_index = (mod(A_vector, 2) == 0);
odd_index = (mod(A_vector, 2) == 1);
even_col = A_vector(even_index);
odd_col = A_vector(odd_index);
even = even_col';
odd = odd_col';

end