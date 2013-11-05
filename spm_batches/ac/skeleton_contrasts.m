% List of open inputs
% Contrast Manager: Select SPM.mat - cfg_files
% Contrast Manager: Name - cfg_entry
% Contrast Manager: T contrast vector - cfg_entry
nrun = X; % enter the number of runs here
jobfile = {'/autofs/cluster/kuperberg/SemPrMM/MRI/scripts/spm_batches/ac/skeleton_contrasts_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(3, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Contrast Manager: Select SPM.mat - cfg_files
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % Contrast Manager: Name - cfg_entry
    inputs{3, crun} = MATLAB_CODE_TO_FILL_INPUT; % Contrast Manager: T contrast vector - cfg_entry
end
spm('defaults', 'FMRI');
spm_jobman('serial', jobs, '', inputs{:});
