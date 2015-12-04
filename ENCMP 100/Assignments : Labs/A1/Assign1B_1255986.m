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
% This program will compute mortgage payments.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear; % Clear the variables in the workspace
% The following 'clc' command has been commented out to match the
% screenshot output in the Assignment 1 descriptioin document (page 7)
%clc; % Clear the command window

% Prompt the user to input the amount borrowed (p), the number of monthly 
% payments (n) in years, and the annual interest rate (R)
p = input('Please enter the principal for the mortgage in dollars: ');
n = input ('Please enter the term of mortgage in years: ');
n = n * 12;
R = input('Please enter the interest rate in percent: ');

% Convert the annual interest rate into a monthly interest rate (r)
r = R / 1200;

% Calculate and display the montly payments (m)
m = (r * p) / (1 - (1+r)^(-n));
disp('Monthly Payments:');
disp(m);

% The total paid
total_paid = m * n;
disp('Total Paid:');
disp(total_paid);

% Calculate and display the amount of principal remaining after 12 months
p_after_12 = p*(1+r)^(12) - (m/r)*((1+r)^(12) - 1);
disp('Principal remaining after 12 months:');
disp(p_after_12);


