function [conArray,p,stats] = mb_structROI(exp, listPrefix, contrastName,roi_file)

%ex: [conArray, p, stats] = mb_structROI('BaleenHP','Unrelated Target vs. Related Target - All Sessions', 'MNI_Temporal_Pole_Sup_L_roi.mat')

%ex: [conArray, p, stats] = mb_structROI('ATLLoc','Sentences vs. WordList - All Sessions', 'MNI_Temporal_Mid_L_roi.mat')

%ex: [conArray, p, stats] = mb_structROI('ATLLoc','Unrelated vs. Direct - All Sessions', 'MNI_Temporal_Mid_L_roi.mat')


dataPath = '/autofs/cluster/kuperberg/SemPrMM/MEG/';
subjList = (dlmread(strcat(dataPath,'scripts/function_inputs/',listPrefix, '.txt')))';

%subjList = [1 2 3 4 5 6 7 9 12 15 16 17 18 19 20 21 22 23 24 25 26 27 29 30 31 32 33]
spm('defaults','fmri');
conArray = [];
roi_dir = '/autofs/cluster/kuperberg/Software/spm/toolbox/marsbar-aal-0.2';

%roi_file = 'MNI_Temporal_Pole_Sup_R_roi.mat'
%expName = 'BaleenHP'
%contrastName = 'Unrelated Target vs. Related Target - All Sessions'


for s = subjList
    s
    root_dir = strcat('/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/ya',int2str(s),'/',exp,'/stats_outliers/8mm_fs_pp/');
    conf_design_name = 'SPM.mat';
    
    roi_name = fullfile(roi_dir, roi_file);
    roiM = maroi(roi_name);
    model = mardo(fullfile(root_dir,'SPM.mat'));
    
    D = mardo(model);
    Y = get_marsy(roiM ,D,'mean');
    E = estimate(D,Y);
    
    t_con = get_contrast_by_name(model,contrastName)
    [E Ic] = add_contrasts(E,t_con);
    stat_struct = compute_contrasts(E,2)
    
    conArray(end+1) = stat_struct.con;
end

[~,p,~,stats] = ttest(conArray);