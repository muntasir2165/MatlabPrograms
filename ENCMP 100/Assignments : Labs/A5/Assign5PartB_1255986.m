%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 5
% Lab Section: A3
% Name: Mohammad Sirajee
% CCID: sirajee
% UofA ID: 1255986
% Date: November 19, 2013
%
% Acknowledgements:
% None
% File: Assign5PartB_1255986.m
% Description:
% This program creates multiple dialog boxes, lets the user choose shapes,
% the corresponding colors and dimensions from the user interfaces
% and prints out all these shape-object related information  along with 
% their calculated area
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = Assign5PartB_1255986()

%clear the command window, the variables from the workspace and close all
%open figure windows
clear; clc; close all;

%initialization of the indexing variable and the shape structure array
numShapes = 0;
shape = {};

while 1
    %iterate the indexing variable
    numShapes = numShapes + 1;
    
    %create a GUI of shapes for the user to select from
    shapeList = {'Circle','Square', 'Ellipse', 'Triangle', 'Rectangle'};
    % selection holds the index of the selected shape
    [selection,ok] = listdlg('PromptString','Select the next shape:',...
        'SelectionMode','single',...
        'OKString','Enter',...
        'CancelString','No more',...
        'ListString',shapeList);
    
    % ok is 1 if a shape was selected; otherwise, ok is 0
    if ~ok
        numShapes = numShapes -1;
        break;
    end
    
    shape(numShapes).objectShape = shapeList{selection};
    
    
    %create a GUI of colours for the user to select from
    colourList = {'Red','Yellow', 'Blue', 'Green', 'Orange', 'Violet'};
    % selection holds the index of the selected colour
    [colour_selection,ok1] = listdlg('PromptString','Select the shape color:',...
        'SelectionMode','single',...
        'OKString','Enter',...
        'CancelString','No colour',...
        'ListString',colourList);
    
    % ok1 is 1 if a colour was selected; otherwise, ok1 is 0
    if ~ok1
        numShapes = numShapes -1;
        break;
    end
    
    shape(numShapes).colour = colourList{colour_selection};
    
    
    %create a GUI for the user to enter two dimensions for the selected
    %shape
    prompt={'Enter shape dimension 1','Enter shape dimension 2'};
    title = 'Shape dimension dialog box';
    numlines = 1;
    defaults = {'0','0'};
    options.Resize = 'on';
    options.WindowStyle = 'normal';
    options.Interpreter = 'none';
    inputvalues = inputdlg(prompt,title,numlines,defaults,options);
    
    % str2num(inputvalues{1}) is the value of the first dimension
    % str2num(inputvalues{2}) is the value of the second dimension
    shape(numShapes).dimensions = [str2num(inputvalues{1}) str2num(inputvalues{2})];
    
end

%call to the area_calculation function to calculate area for each of the
%selected objects in the shape structure array
area = area_calculation(shape);

%print out the total number of shape objects the user selected
fprintf('The number of entered objects was %d\n', numShapes);

%print the label for the columns
fprintf('No.\tID\t\tColor\t\tArea\n');
for i = 1:numShapes
    shape(i).area = area(i);
    fprintf('%d\t%s\t\t%s\t\t%.6f\n', i, shape(i).objectShape,...
        shape(i).colour, shape(i).area);
end
end

function [area] = area_calculation(shape)
% calculate the area of shape objects in a given structure array and return
% the results in an area array

%use the shape structure array size information to initialize the area
%array
[row, number_of_shapes] = size(shape);
area = zeros(row, number_of_shapes);

for i = 1:number_of_shapes
    switch shape(i).objectShape
        case 'Circle'
            %area = 4*pi*radius^2
            area(i) = 4 * pi * ((shape(i).dimensions(1))/2)^2;
        case 'Square'
            %area = sidelength^2
            area(i) = (shape(i).dimensions(1))^2;
        case 'Ellipse'
            %area = pi * major diamemter * minor diameter
            area(i) = pi * (shape(i).dimensions(1)) * (shape(i).dimensions(2));
        case 'Triangle'
            %area = 0.5 * base * perpendicular
            area(i) = 0.5 * (shape(i).dimensions(1)) * (shape(i).dimensions(2));
        case 'Rectangle'
            %area = length * breadth
            area(i) = (shape(i).dimensions(1)) * (shape(i).dimensions(2));
    end
end
end

