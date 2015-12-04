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
% File: Assign3B_1255986.m
% Description:
% This program calculates the tuition fee of a 4-year college program 
% and the minimum monthly payments required to your savings plan for your 
% precious kid's college education.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%clear the command window, the variables from the workspace and close all
%open figures
clear; clc; close all;

%display the options of program to the user
program = input('Select a program: 1. Arts, 2. Science, 3. Engineering: ');

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
%rate and the annual tuition fees increase rate
old_balance = 1000;
%initialize monthly payment to $40.00 which will ultimately be initialized 
%to the specified starting value of $50.00 in the while loop
monthly_payment = 40;
annual_interest_rate = 6/100;
monthly_interest_rate = annual_interest_rate/12;
annual_tuition_increase_rate = 6/100;

%create and initialize accumulators for storing new balance after monthly
%payments and new tuition fees annualy respectively
new_balance = old_balance;
new_cost = tuition;

%calculate the annual tuition fees for 22 years
for i = 1:22
    cost(i) = new_cost;
    new_cost = new_cost + (new_cost * annual_tuition_increase_rate);
end

%define a variable total tuition cost for a 4-year program at the 18th year
tuition_required = sum(cost(19:22));

%calculate the required monthly payment required to meet the
%tuition_requirement
while new_balance < tuition_required
    new_balance = old_balance;
    monthly_payment = monthly_payment + 10;
    %calculate the savings for 18 years
    for i = 2:18*12
        new_balance = new_balance + (new_balance * monthly_interest_rate) +...
            monthly_payment;
    end 
end

fprintf('The 4-year tuition fee is $ %7.2f\n', tuition_required);
fprintf('You will need to save $ %6.2f each month to reach the goal\n', monthly_payment);






