% List of open inputs
% fMRI model specification: Directory - cfg_files
% fMRI model specification: Units for design - cfg_menu
% fMRI model specification: Interscan interval - cfg_entry
% fMRI model specification: Data & Design - cfg_repeat
nrun = X; % enter the number of runs here
jobfile = {'/autofs/cluster/kuperberg/SemPrMM/MRI/scripts/spm_batches/ya/changesKirsten/tryout_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(4, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % fMRI model specification: Directory - cfg_files
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % fMRI model specification: Units for design - cfg_menu
    inputs{3, crun} = MATLAB_CODE_TO_FILL_INPUT; % fMRI model specification: Interscan interval - cfg_entry
    inputs{4, crun} = MATLAB_CODE_TO_FILL_INPUT; % fMRI model specification: Data & Design - cfg_repeat
end
spm('defaults', 'FMRI');
spm_jobman('serial', jobs, '', inputs{:});
