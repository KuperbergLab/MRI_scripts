% List of open inputs
% Presubtracted Phase and Magnitude Data: Phase Image - cfg_files
% Presubtracted Phase and Magnitude Data: Magnitude Image - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
% Presubtracted Phase and Magnitude Data: Select anatomical image for comparison - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Realign & Unwarp: Images - cfg_files
% Coreg: Estimate & Reslice: Source Image - cfg_files
nrun = X; % enter the number of runs here
jobfile = {'/autofs/cluster/kuperberg/SemPrMM/MRI/scripts/spm_batches/baleenmm_preproc_blank_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(20, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Phase Image - cfg_files
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Magnitude Image - cfg_files
    inputs{3, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{4, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{5, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{6, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{7, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{8, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{9, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{10, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select EPI to Unwarp - cfg_files
    inputs{11, crun} = MATLAB_CODE_TO_FILL_INPUT; % Presubtracted Phase and Magnitude Data: Select anatomical image for comparison - cfg_files
    inputs{12, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{13, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{14, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{15, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{16, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{17, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{18, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{19, crun} = MATLAB_CODE_TO_FILL_INPUT; % Realign & Unwarp: Images - cfg_files
    inputs{20, crun} = MATLAB_CODE_TO_FILL_INPUT; % Coreg: Estimate & Reslice: Source Image - cfg_files
end
spm('defaults', 'FMRI');
spm_jobman('serial', jobs, '', inputs{:});
