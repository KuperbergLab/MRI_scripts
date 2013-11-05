%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 3944 $)
%-----------------------------------------------------------------------
mkdir('/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$stat_folder/swra_slice/');
matlabbatch{1}.spm.stats.fmri_spec.dir = {'/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/stats_outliers/swra_slice/'};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 36;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 18;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1_r4D.nii,130'
                                                    };
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [$Run1RelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = [$Run1RelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [$Run1UnrelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = [$Run1UnrelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'FillersUnrel';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [$Run1UnrelatedFillerTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = [$Run1UnrelatedFillerTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).name = 'AnimalsTargets';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).onset = [$Run1AnimalTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).duration = [$Run1AnimalTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).name = 'AnimalsPrimes';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).onset = [$Run1AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).duration = [$Run1AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AllPrimes
%matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(6).name = 'AllPrimes';
%matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(6).onset = [$Run1RelatedPrimeOnsets, $Run1UnrelatedPrimeOnsets, $Run1UnrelatedFillerPrimeOnsets];
%matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(6).duration = [$Run1RelatedPrimeDurations, $Run1UnrelatedPrimeDurations, $Run1UnrelatedFillerPrimeDurations];
%matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(6).tmod = 0;
%matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(6).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/$Run1MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2_r4D.nii,130'
                                                    };

%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [$Run2RelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = [$Run2RelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [$Run2UnrelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = [$Run2UnrelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'FillersUnrel';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [$Run2UnrelatedFillerTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = [$Run2UnrelatedFillerTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).name = 'AnimalsTargets';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).onset = [$Run2AnimalTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).duration = [$Run2AnimalTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).name = 'AnimalsPrimes';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).onset = [$Run2AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).duration = [$Run2AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AllPrimes
%matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(6).name = 'AllPrimes';
%matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(6).onset = [$Run2RelatedPrimeOnsets, $Run2UnrelatedPrimeOnsets, $Run2UnrelatedFillerPrimeOnsets];
%matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(6).duration = [$Run2RelatedPrimeDurations, $Run2UnrelatedPrimeDurations, $Run2UnrelatedFillerPrimeDurations];
%matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(6).tmod = 0;
%matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(6).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/$Run2MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3_r4D.nii,130'
                                                    };
%%
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [$Run3RelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = [$Run3RelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [$Run3UnrelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = [$Run3UnrelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'FillersUnrel';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [$Run3UnrelatedFillerTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = [$Run3UnrelatedFillerTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).name = 'AnimalsTargets';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).onset = [$Run3AnimalTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).duration = [$Run3AnimalTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).name = 'AnimalsPrimes';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).onset = [$Run3AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).duration = [$Run3AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AllPrimes
%matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(6).name = 'AllPrimes';
%matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(6).onset = [$Run3RelatedPrimeOnsets, $Run3UnrelatedPrimeOnsets, $Run3UnrelatedFillerPrimeOnsets];
%matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(6).duration = [$Run3RelatedPrimeDurations, $Run3UnrelatedPrimeDurations, $Run3UnrelatedFillerPrimeDurations]
%matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(6).tmod = 0;
%matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(6).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/$Run3MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4_r4D.nii,130'
                                                    };
%%
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).onset = [$Run4RelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).duration = [$Run4RelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).onset = [$Run4UnrelatedTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).duration = [$Run4UnrelatedTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).name = 'FillersUnrel';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).onset = [$Run4UnrelatedFillerTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).duration = [$Run4UnrelatedFillerTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).name = 'AnimalsTargets';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).onset = [$Run4AnimalTargetOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).duration = [$Run4AnimalTargetDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AnimalsTargets
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).name = 'AnimalsPrimes';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).onset = [$Run4AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).duration = [$Run4AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AllPrimes
%matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(6).name = 'AllPrimes';
%matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(6).onset = [$Run4RelatedPrimeOnsets, $Run4UnrelatedPrimeOnsets, $Run4UnrelatedFillerPrimeOnsets];
%matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(6).duration = [$Run4RelatedPrimeDurations, $Run4UnrelatedPrimeDurations, $Run4UnrelatedFillerPrimeDurations];
%matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(6).tmod = 0;
%matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(6).pmod = struct('name', {}, 'param', {}, 'poly', {});
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/$Run4MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
matlabbatch{1}.spm.stats.fmri_spec.mask = {'/cluster/kuperberg/Software/spm/templates/mask20_no_eyeballs.nii,1'};
matlabbatch{1}.spm.stats.fmri_spec.cvi = 'AR(1)';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tgt_spec = {};
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).sname = 'fMRI model specification: SPM.mat File';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{3}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{3}.spm.stats.con.spmmat(1).tgt_spec = {};
matlabbatch{3}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{3}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'Related Target';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = [1 0 0];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'bothsc';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'Unrelated Target';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.convec = [0 1 0];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'bothsc';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'Related Target vs Unrelated Target';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.convec = [1 -1 0];
matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'bothsc';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'Unrelated Target vs. Related Target';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.convec = [-1 1 0];
matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'bothsc';
matlabbatch{3}.spm.stats.con.delete = 1;

warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	delete('$EightSPM');
	fclose(fopen('$start_file','w'));
	output = spm_jobman('run_nogui',matlabbatch);
	fclose(fopen('$run_file','w'));
	ec = 0;
catch ME
	ec = 1;
end
exit(ec);

