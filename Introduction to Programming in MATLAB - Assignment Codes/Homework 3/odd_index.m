function M_odd = odd_index(M)
%odd_matrix takes a matrix M, as input argument and returns a 
%matrix that contains only those elements of M that are in 
%odd rows and columns

% %Solution 1 (long solution)
% [M_row, M_col] = size(M);
% row = fix(M_row / 2) + ((mod(M_row, 2) ~= 0)*1);
% col = fix(M_col / 2) + ((mod(M_col, 2) ~= 0)*1);
% 
% M_odd = zeros(row, col);
% 
% row_increment = 0;
% for i=1:M_row
%     if mod(i,2) == 0
%         continue;
%     else
%         row_increment = row_increment + 1;
%         col_increment = 1;
%         for j = 1:M_col
%             if mod(j,2) == 0
%                 continue;
%             else
%                 M_odd(row_increment,col_increment) = M(i,j);
%             end
%         col_increment = col_increment + 1;
%         end
%     end
% end

%Solution 2 (short and sort of fast solution)
M_odd = M(1:2:size(M,1), 1:2:size(M, 2));

end