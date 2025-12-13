**Before running in command window run the
EIA_HFC.mat functions from downloads
folder
folderPath = 'C:
Users Lenovo Desktop PHD PROGR ESS dataset em wise specific folder
name
filePattern = fullfile(folderPath, '*.mat');
matFiles = dir(filePattern);
for k =
1 :length(
%
Get the base filename
%
baseFileName = matFiles(k).name;
%
Create the full file name and load the .mat file
%
fullFileName = full file(folderPath, baseFileName);
data=CropXN2
/CropX1/CropX2
alfa=
10 3
[vd] = EIA_HFC(data,alfa);
%
fprintf('Now reading %s n', fullFileName);
end