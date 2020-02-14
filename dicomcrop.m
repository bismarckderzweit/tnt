i=1;
for n = 604:643
filename = sprintf('studySorted2anon%d.dcm',n); 
if exist(filename)
A = dicomread(filename);
% info = dicominfo(filename);
oldinfo = dicominfo(filename);
pos = oldinfo.ImagePositionPatient;
ori = oldinfo.ImageOrientationPatient;
% strcat(N num2str(n)) = dicomread(imagename);

%  imshow(X,[]);

rect = [299,62,36,36];
B = imcrop(A,rect);
cropfilename = sprintf('%d.dcm',i);
dicomwrite(B,cropfilename);
info = dicominfo(cropfilename);
info.InstanceNumber = 1;
info.SeriesInstanceUID ='1.3.6.1.4.1.9590.100.1.2.6094832338796916329309603294277072049';
info.StudyInstanceUID= num2str(i);
% info.MediaStorageSOPInstanceUID = i;
% info.Modality ='CT';
% info.FrameOfReferenceUID=i;
% info.ImagePositionPatient = pos;
% info.ImageOrientationPatient=ori;
cropfilename2=sprintf('k%d.dcm',i);
dicomwrite(B,cropfilename2,info);

i =i+1;
end
end

