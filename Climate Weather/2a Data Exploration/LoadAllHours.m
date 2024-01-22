%% Selecting data
% We want to load models only, i.e. variables 1, 2, 4, 5, 6, 7, 8
% and we only want a single hour. We use indexing into our *.nc file:
% To load the variable 'chimere_ozone, starting at lat = 1, lon = 1 and
% hour = 1 we use:
[AllHourMem] = LoadAllHour(FileName);
function [AllHourMem] = LoadAllHour(FileName)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ExploreData;
StartLat = 1;
NumLat = 400;
StartLon = 1;
NumLon = 700;
StartHour = 1;
NumHour = 1;

Data = ncread(FileName, 'chimere_ozone', [StartLon, StartLat, StartHour], [NumLon, NumLat, NumHour]);

Contents = ncinfo(FileName); % Store the file content information in a variable.
for idx = 1
    AllHour(idx,:,:,:) = ncread(FileName, 'chimere_ozone', [StartLon, StartLat, StartHour], [NumLon, NumLat, NumHour]); 
    fprintf('', [StartLon, StartLat, StartHour], [NumLon, NumLat, NumHour]); 
    % display loading information
end

AllHourMem = whos('AllHour').bytes/1000000; 
fprintf('Memory used for all data: %.3f MB\n', AllHourMem)
end

