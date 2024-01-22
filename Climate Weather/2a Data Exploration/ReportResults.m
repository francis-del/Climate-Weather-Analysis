%% Cycling through the variable names
% We only want the models to load

[ResultsMem] = Results(FileName);
function [ResultsMem] = Results(FileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ExploreData;
Contents = ncinfo(FileName); % Store the file content information in a variable.
for idx = [1, 2, 4, 5, 6, 7, 8]
    %Result(idx) = ncread(Contents.Variables(idx).Name);
    fprintf('Model %i : %s\n', idx, Contents.Variables(idx).Name);
end
end