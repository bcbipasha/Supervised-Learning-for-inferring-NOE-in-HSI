%**Before running in command window run the HYSIME functions of
estnoise from
sisal_demo folder & hysime from Hysimedemo Folder
f
olderPath = 'C: Users Lenovo Desktop PHD PROGRESS dataset em wise specific folder
name
filePattern = fullfile(folderPath, '*.mat');
matFiles = dir(filePattern);
for k =
1 :length(
[w Rw]=estNoise(CropX2
/X1/CropXN2
e
nd
…
folderPath = 'C:
Users Lenovo Desktop PHD PROGRESS dataset em wise specific folder
name
filePattern = fullfile(folderPath, '*.mat');
matFiles = dir(filePattern);
for k =
1 :length(
[kf,Ek]=hysime(
CropX2 /X1/CropXN2 w,Rw);
end