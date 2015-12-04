%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 4
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% U of A ID: 1255986
% Date: Oct. 31, 2013
% Acknowledgements:
% I received help from Jason Smith on using functions
%
% File: Assign4_1255986.m
% Description:
% This program calculates medal standings for the Vancouver Olympics
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = Assign4_1255986_1()
% clear Workspace and Command Window and load olympics2010
clear, clc;
data = load('olympics2010.mat');
medal_count();
disp_medal_count();

% compute medals for each country using a sub-function that is
% called using a loop over all countries
    function [gold_medals, silver_medals, bronze_medals, total_medals] = medal_count()
        global total_countries; 
        global gold_medals;
        global silver_medals;
        global bronze_medals;
        global total_medals;
        total_countries = length(data.countries);
        gold_medals = zeros(total_countries, 1);
        silver_medals = zeros(total_countries, 1);
        bronze_medals = zeros(total_countries, 1);
        total_medals = zeros(total_countries, 1);
        for i = 1:total_countries
            country = data.countries(i, :);
            if country == 'XXX'
                continue
            end
            gold_count = 0;
            silver_count = 0;
            bronze_count = 0;
            for j = 1: length(data.gold)
                if country == data.gold(i, :)
                    gold_count = gold_count + 1;
                end
                if country == data.silver(i, :)
                    silver_count = silver_count + 1;
                end
                if country == data.bronze(i, :)
                    bronze_count = bronze_count + 1;
                end
                gold_medals(i) = gold_count;
                silver_medals(i) = silver_count;
                bronze_medals(i) = bronze_count;
                total_medals(i) = gold_count+silver_count+bronze_count;
            end
        end
    end

% display medal counts for all countries using a sub-function
    function [] = disp_medal_count()
        fprintf('Country\t Gold\t Silver\t Bronze\ Total');
        fprintf('\n');
        for i = 1:total_countries
            if data.countries(i, :) ~= 'XXX'
                fprintf('%s\t %d\t %d\t %d\t %d\t\n', data.countries(i, :), gold_medals(i), silver_medals(i), bronze_medals(i), total_medals(i));
            end
        end
        
    end

% display countries with most medals, most gold medals, >=20 medals
% using a sub-function, the same sub-function should be used 3 times
end