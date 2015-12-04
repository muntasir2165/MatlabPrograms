%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 3
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% UofA ID: 1255986
% Date: October 15, 2013
%
% Acknowledgements:
% None
% File: Assign3A_1255986.m
% Description:
% This program calculates savings for your precious kid's college
% education, the cost of a 4-year college program and lets you know if 
% that would cover the college program.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%clear the command window, the variables from the workspace and close all
%open figure windows
clear; clc; close all;

%display the options of program to the user
program = input('Select a program: 1. Arts; 2. Science; 3. Engineering: ');

%assign the appropriate (current) tuition fees to the tuition variable
switch program
    case 1
        tuition = 5500;
    case 2
        tuition = 6000;
    case 3
        tuition = 6500;
end

%assign specified values for the starting balance for the
%RESP, the monthly contribution, annual interest rate, monthly interest
%rate and the annual tuition fees increase rate respectively
old_balance = 1000;
monthly_payment = 200;
annual_interest_rate = 6/100;
monthly_interest_rate = annual_interest_rate/12;
annual_tuition_increase_rate = 6/100;

%create and initialize vectors to store monthlycontributions for 18 years
%and annual tuition fees for 22 years respectively
savings = zeros(1, 18*12);
cost = zeros(1, 22);

%create and initialize accumulators for storing new balance after monthly
%payments and new tuition fees annually respectively
new_balance = old_balance;
new_cost = tuition;

%initial deposit of $1000.00 into the account for the first month
savings(1) = old_balance;

%calculate the savings for 18 years
for i = 2:18*12
    new_balance = new_balance + (new_balance * monthly_interest_rate) +...
        monthly_payment;
    savings(i) = new_balance;
end

%calculate the annual tuition fees for 22 years
for i = 1:22
    cost(i) = new_cost;
    new_cost = new_cost + (new_cost * annual_tuition_increase_rate);
    
end

%define variables for the total savings after 18 years of payment and
%total tuition cost for a 4-year program at the 18th year respectively
total_savings = savings(length(savings));
tuition_required = sum(cost(19:22));

%display the savings after 18 years and the total cost of a 4-year college
%program at the 18th year respectively
fprintf('At the end of 18 years you will have saved $ %7.2f\n', total_savings);
fprintf('The cost of a 4-year college tuition fee is $ %7.2f\n', tuition_required);

%display if the savings goal is achieved or not
if total_savings>= tuition_required
    disp('Congratulations!!!! You have saved enough.');
else
    fprintf('The saving is $ %6.2f short.\n', (tuition_required - total_savings));
end

%create, initialize and determine a yearly format of the savings vector for
%plotting
savings_yearly = zeros(1, 18);
i = 1; %counting variable
j = 1; %savings array indexing variable
while i <= length(savings)
    savings_yearly(j) = savings(i+11);
    i = i+12;
    j = j+1;
end

%savings_yearly
figure;
plot(1:18, savings_yearly, 'g');
xlabel('Year');
ylabel('Balance');
title('College Savings vs. Tuition fee');
hold on;
plot(1:18, tuition_required.*ones(1,18), '-b');
%axis([0 18 0 100000]);


