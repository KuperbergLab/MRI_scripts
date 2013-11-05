% List of open inputs
% Slice Timing: Session - cfg_files
% Slice Timing: Session - cfg_files
% Slice Timing: Session - cfg_files
% Slice Timing: Session - cfg_files
% Coreg: Estimate & Reslice: Source Image - cfg_files
nrun = X; % enter the number of runs here
jobfile = {'/autofs/cluster/kuperberg/SemPrMM/MRI/scripts/spm_batches/ya/changesKirsten/baleenhp_preproc_kirsten_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(5, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Slice Timing: Session - cfg_files
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % Slice Timing: Session - cfg_files
    inputs{3, crun} = MATLAB_CODE_TO_FILL_INPUT; % Slice Timing: Session - cfg_files
    inputs{4, crun} = MATLAB_CODE_TO_FILL_INPUT; % Slice Timing: Session - cfg_files
    inputs{5, crun} = MATLAB_CODE_TO_FILL_INPUT; % Coreg: Estimate & Reslice: Source Image - cfg_files
end
spm('defaults', 'FMRI');
spm_jobman('serial', jobs, '', inputs{:});
