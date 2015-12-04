%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Course: ENCMP 100
% Assignment: 1
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% U of A ID: 1255986
% Date: Sept. 19, 2013
%
% Acknowledgements:
% None
%
% Description:
% This program will show some basic matrix manipulations.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; % Clear the variables in the workspace
clc; % Clear the command window

% Arrays to manipulate
A = [10 0; 8 -2];
B = [6 3; -7 11];

% Display the array contents in the command window
disp('Matrix A:');
disp(A);
disp('Matrix B:');
disp(B);

% Display row 2 of matrix A
disp('Row 2 in matrix A:');
disp(A(2,:));

% Display column 1 of matrix B
disp('Column 1 in matrix B:');
disp(B(:,1));

% Display the sum of each column in matrix A
disp('Sum of matrix A:');
disp(sum(A));

% Display the result of the addition of matrices A and B
disp('Adding matrices A and B:');
disp(A+B);

% Display the result of the array (element-by-element) multiplication of A and B
disp('Array multiplication of A and B:');
disp(A.*B);

% Display the result of the matrix multiplication of A and B
disp('Matrix multiplication of A and B:');
disp(A*B);

% Display the result of the matrix multiplication of B and A
disp('Matrix multiplication of B and A:');
disp(B*A);












