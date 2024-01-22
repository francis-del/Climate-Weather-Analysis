
function [AllDataMem] = LoadAllData(FileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ExploreData;
fprintf('Data Dimension Names: %s, %s, %s\n',...
    Contents.Dimensions(1).Name,...
    Contents.Dimensions(2).Name,...
    Contents.Dimensions(3).Name)
Contents = ncinfo(FileName); % Store the file content information in a variable.
for idx = 1: 8
    AllData(idx,:,:,:) = ncread(FileName, Contents.Variables(idx).Name); 
    fprintf('Loading %s\n', Contents.Variables(idx).Name); 
    % display loading information
end

AllDataMem = whos('AllData').bytes/1000000; 
fprintf('Memory used for all data: %.3f MB\n', AllDataMem)
end

