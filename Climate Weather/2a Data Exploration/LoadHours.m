%% List variable names
% note that variable 3 is an ensemble, we will NOT use this in our project!
% Not each model is 700 x 400 x 12 and we know that lat, lon and time match
% these numbers.
% To visulaise this 3D array think of it as a 700 x 400 grid for each model
% for one hour. These are stacked up 25 high.

function [AllHorsMem] = LoadAllHors(FileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ExploreData;
Contents = ncinfo(FileName);
NumVariables = size(Contents.Variables,2);
fprintf('Variable names and sizes:\n')
for idx = 1: NumVariables
    AllHors(idx,:,:,:) = size(Contents.Variables,2); 
    fprintf('%i     %s  %i, %i, %i',...
        idx, Contents.Variables(idx).Name, Contents.Variables(idx).Size);
    fprintf('\n');
end
AllHorsMem = whos('AllHors').bytes/1000000; 
fprintf('Memory used for Hour: %.3f MB\n', AllHorsMem)
end
