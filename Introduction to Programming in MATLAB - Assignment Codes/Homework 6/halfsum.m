function sumA = halfsum(A)

sumA = 0;
[row, col] = size(A);

%note: the idea of a diagonal (and diagonal entries) is usually associated 
%with square matrices where number of rows = number of columns and so, 
%here, we won't have to worry about number of columns being > number of 
%rows or number of columns being < number of rows
for i=1:row
    sumA = sumA + sum(A(i, i:col));
end    

end