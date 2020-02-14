load input.mat
for i = 1:30
    info.InstanceNumber = 1;
info.SeriesInstanceUID ='1.3.6.1.4.1.9590.100.1.2.6094832338796916329309603294277072049';
info.StudyInstanceUID= num2str(i);
    cropfilename2=sprintf('k%d.dcm',i);
    dicomwrite(im_bbox(:,:,i),cropfilename2,info)
    i =i+1;
end