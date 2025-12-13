%**Before running in command window run the Gap_Vd.m functions from downloads folder**
folderPath = 'C:\Users\Lenovo\Desktop\PHD PROGRESS\dataset em wise\ specific folder
name';
filePattern = fullfile(folderPath, '*.mat');
matFiles = dir(filePattern);
for k = 1:length(matFiles)
data=CropXN2/CropX1/CropX2;
[NoEm,gap]=Gap_Vd(data)
end