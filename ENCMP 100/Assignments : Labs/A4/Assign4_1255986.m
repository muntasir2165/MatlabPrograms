%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 4
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% U of A ID: 1255986
% Date: Oct. 31, 2013
% Acknowledgements:
% None
%
% File: Assign4_1255986.m
% Description:
% This program calculates medal standings for the Vancouver Olympics
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = Assign4_1255986()
%clear Workspace and Command Window and load olympics2010
clear; clc;
load('olympics2010.mat');

%function calls
[gold_medals, silver_medals, bronze_medals, total_medals] = medal_count(gold, silver, bronze, countries);
disp_medal_count(gold_medals, silver_medals, bronze_medals, total_medals, countries);
disp_medal_stats(gold_medals, total_medals, countries, 1);
disp_medal_stats(gold_medals, total_medals, countries, 2);
disp_medal_stats(gold_medals, total_medals, countries, 3);

end


%-------------------------------------------------------------------------%
%compute medals for each country using a sub-function that is
%called using a loop over all countries
function [gold_medals, silver_medals, bronze_medals, total_medals] = medal_count(gold, silver, bronze, countries)
%calculate the total number of gold, silver and bronze medals for
%each and every country

%initialize and pre-allocate the variables
total_countries = length(countries);
gold_medals = zeros(total_countries, 1);
silver_medals = zeros(total_countries, 1);
bronze_medals = zeros(total_countries, 1);
total_medals = zeros(total_countries, 1);

for i = 1:total_countries
    country = countries(i, :);
    gold_count = 0;
    silver_count = 0;
    bronze_count = 0;
    for j = 1: length(gold)
        if country == gold(j, :)
            gold_count = gold_count + 1;
        end
        if country == silver(j, :)
            silver_count = silver_count + 1;
        end
        if country == bronze(j, :)
            bronze_count = bronze_count + 1;
        end
        gold_medals(i) = gold_count;
        silver_medals(i) = silver_count;
        bronze_medals(i) = bronze_count;
        total_medals(i) = gold_count+silver_count+bronze_count;
    end
end
end


%display medal counts for all countries using a sub-function
function [] = disp_medal_count(gold_medals, silver_medals, bronze_medals, total_medals, countries)
%display the gold, silver and bronze medal count for each country

fprintf('Country Gold Silver Bronze Total\n');

for i = 1:length(countries)
    if strcmp(countries(i, :), 'XXX') == 0
        fprintf('%7s %4d %6d %6d %5d\n', countries(i, :), gold_medals(i), silver_medals(i), bronze_medals(i), total_medals(i));
    end
end
end


%display countries with most medals, most gold medals, and >=20 medals
%using a sub-function, the same sub-function should be used 3 times
function [] = disp_medal_stats(gold_medals, total_medals, countries, option)
%display stats for countries with most medals, most gold medals, and >= 20 medals

fprintf('\n');

switch option
    case 1
        most_medals = find(total_medals == max(total_medals));
        fprintf('Countries with the most medals: %s', countries(most_medals, :));
    case 2
        most_gold_medals = find(gold_medals == max(gold_medals));
        fprintf('Countries with the most gold medals: %s', countries(most_gold_medals, :));
    case 3
        atleast_20_medals = find(total_medals >= 20);
        fprintf('Countries with at least 20 medals: ');
        
        for i = 1:length(atleast_20_medals)
            fprintf('%s ', countries(atleast_20_medals(i), :));
        end
        fprintf('\n');
end
end
