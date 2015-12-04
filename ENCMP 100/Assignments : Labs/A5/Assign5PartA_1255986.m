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
% File: Assign5PartA_1255986.m
% Description:
% This program creates multiple dialog boxes, lets the user choose shapes, 
% the corresponding shape colors and dimensions from the user interfaces 
% and (in the end) prints out the total number of shape objects selected
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%clear the command window, the variables from the workspace and close all
%open figure windows
clear; clc; close all;

%initialization of the shape selection counting variable
numShapes = 0;

while true
    %create a GUI of shapes for the user to select from
    %shapeList is a cell array of strings (of the required shapes) for the
    %list box in the GUI
    shapeList = {'Circle','Square', 'Ellipse', 'Triangle', 'Rectangle'};
    [selection,ok] = listdlg('PromptString','Select the next shape:',...
        'SelectionMode','single',...
        'OKString','Enter',...
        'CancelString','No more',...
        'ListString',shapeList);
    
    % selection now holds the index of the selected shape
    % ok is 1 if a shape was selected; otherwise, ok is 0
    if ~ok
        break;
    end
    
    %create a GUI of colours for the user to select from
    %colourList is a cell array of strings (of the required colours) for
    %the list box in the GUI
    colourList = {'Red','Yellow', 'Blue', 'Green', 'Orange', 'Violet'};
    [colour_selection,ok1] = listdlg('PromptString','Select the shape color:',...
        'SelectionMode','single',...
        'OKString','Enter',...
        'CancelString','No colour',...
        'ListString',colourList);
    
    % selection now holds the index of the selected colour
    % ok1 is 1 if a colour was selected; otherwise, ok1 is 0
    if ~ok1
        break;
    end
    
    %create a GUI for the user to enter two dimensions for the selected
    %shape
    %prompt is a cell array containing the prompt strings
    prompt={'Enter shape dimension 1','Enter shape dimension 2'};
    title = 'Shape dimension dialog box';
    numlines = 1;
    %defaults is a cell array containing the default inputs as strings
    defaults = {'0','0'};
    %options is a structure that specifies additional options for the
    %dialog box
    options.Resize = 'on';
    options.WindowStyle = 'normal';
    options.Interpreter = 'none';
    %inputvalues is a cell array containing the user inputs as strings
    inputvalues = inputdlg(prompt,title,numlines,defaults,options);
    % str2num(inputvalues{1}) is the value of the first dimension
    % str2num(inputvalues{2}) is the value of the second dimension
    
    %increment the counting variable
    numShapes = numShapes + 1;
end

%print out the total number of shape objects the user selected
fprintf('The number of entered objects was %d\n', numShapes);

