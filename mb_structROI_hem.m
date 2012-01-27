function mb_structROI_hem(exp,listPrefix,contrastName,roi_label)

%%wrapper script to save hem ROI data to text for R

roi_file_L = strcat(roi_label,'_L_roi.mat');
roi_file_R = strcat(roi_label,'_R_roi.mat');

[conArrayL,~,~] = mb_structROI(exp, listPrefix, contrastName,roi_file_L);
[conArrayR,~,~] = mb_structROI(exp, listPrefix, contrastName,roi_file_R);

conArrayDiff = conArrayL-conArrayR;

allData = conArrayL';
allData(:,2) = conArrayR';
allData(:,3) = conArrayDiff';


outFile = strcat('/autofs/cluster/kuperberg/SemPrMM/MRI/results/hem_measures/mb_struct_roi_',listPrefix,'.',exp,'.',contrastName,roi_label,'.txt');
dlmwrite(outFile,allData,'\t');
