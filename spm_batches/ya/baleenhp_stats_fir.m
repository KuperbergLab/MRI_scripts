%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 3944 $)
%-----------------------------------------------------------------------
mkdir('/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$stat_folder/swra_fir/');
matlabbatch{1}.spm.stats.fmri_spec.dir = {'/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/stats_outliers/swra_fir/'};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 36;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 18;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/swraBaleenLP1.nii,130'
                                                    };
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [$Run1RelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = [$Run1RelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [$Run1UnrelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = [$Run1UnrelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'Fillers';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [$Run1UnrelatedFillerOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = [$Run1UnrelatedFillerDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Animals
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).name = 'Animals';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).onset = [$Run1AnimalTargetOnsets $Run1AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).duration = [$Run1AnimalTargetDurations $Run1AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run1XXX/$Run1MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/swraBaleenLP2.nii,130'
                                                    };

%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [$Run2RelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = [$Run2RelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [$Run2UnrelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = [$Run2UnrelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'Fillers';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [$Run2UnrelatedFillerOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = [$Run2UnrelatedFillerDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Animals
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).name = 'Animals';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).onset = [$Run2AnimalTargetOnsets $Run2AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).duration = [$Run2AnimalTargetDurations $Run2AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run2XXX/$Run2MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/swraBaleenLP3.nii,130'
                                                    };
%%
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [$Run3RelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = [$Run3RelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [$Run3UnrelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = [$Run3UnrelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'Fillers';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [$Run3UnrelatedFillerOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = [$Run3UnrelatedFillerDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Animals
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).name = 'Animals';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).onset = [$Run3AnimalTargetOnsets $Run3AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).duration = [$Run3AnimalTargetDurations $Run3AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run3XXX/$Run3MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/swraBaleenLP4.nii,130'
                                                    };
%%
%RelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).name = 'RelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).onset = [$Run4RelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).duration = [$Run4RelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%UnrelatedTarget
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).name = 'UnrelatedTarget';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).onset = [$Run4UnrelatedOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).duration = [$Run4UnrelatedDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Filler
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).name = 'RelatedFillers';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).onset = [$Run4UnrelatedFillerOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).duration = [$Run4UnrelatedFillerDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Animals
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).name = 'Animals';
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).onset = [$Run4AnimalTargetOnsets $Run4AnimalPrimeOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).duration = [$Run4AnimalTargetDurations $Run4AnimalPrimeDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(4).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(4).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenLP/$Run4XXX/$Run4MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(4).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.fir.length = 18;
matlabbatch{1}.spm.stats.fmri_spec.bases.fir.order = 9;
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = [1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'Unrelated Target';																																			
matlabbatch{3}.spm.stats.con.consess{2}.tcon.convec = [0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'Related Target vs Unrelated Target';																																			
matlabbatch{3}.spm.stats.con.consess{3}.tcon.convec = [1	1	1	1	1	1	1	1	1	-1	-1	-1	-1	-1	-1	-1	-1	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'Unrelated Target vs. Related Target';																																			
matlabbatch{3}.spm.stats.con.consess{4}.tcon.convec = [-1	-1	-1	-1	-1	-1	-1	-1	-1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'All vs Baseline';																																			
matlabbatch{3}.spm.stats.con.consess{5}.tcon.convec = [1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'Filler vs Baseline';																																			
matlabbatch{3}.spm.stats.con.consess{6}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1	1	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{7}.tcon.name = 'Animals vs Baseline';																																			
matlabbatch{3}.spm.stats.con.consess{7}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1	1];
matlabbatch{3}.spm.stats.con.consess{7}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{8}.tcon.name = 'Related Target1';																																			
matlabbatch{3}.spm.stats.con.consess{8}.tcon.convec = [1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{8}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{9}.tcon.name = 'Unrelated Target1';																																			
matlabbatch{3}.spm.stats.con.consess{9}.tcon.convec = [0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{9}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{10}.tcon.name = 'Filler vs Baseline1';																																			
matlabbatch{3}.spm.stats.con.consess{10}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{10}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{11}.tcon.name = 'Animals vs Baseline1';																																			
matlabbatch{3}.spm.stats.con.consess{11}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0
matlabbatch{3}.spm.stats.con.consess{11}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{12}.tcon.name = 'Related Target2';																																			
matlabbatch{3}.spm.stats.con.consess{12}.tcon.convec = [0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{12}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{13}.tcon.name = 'Unrelated Target2';																																			
matlabbatch{3}.spm.stats.con.consess{13}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{13}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{14}.tcon.name = 'Filler vs Baseline2';																																			
matlabbatch{3}.spm.stats.con.consess{14}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{14}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{15}.tcon.name = 'Animals vs Baseline2';																																			
matlabbatch{3}.spm.stats.con.consess{15}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0
matlabbatch{3}.spm.stats.con.consess{15}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{16}.tcon.name = 'Related Target3';																																			
matlabbatch{3}.spm.stats.con.consess{16}.tcon.convec = [0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{16}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{17}.tcon.name = 'Unrelated Target3';																																			
matlabbatch{3}.spm.stats.con.consess{17}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{17}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{18}.tcon.name = 'Filler vs Baseline3';																																			
matlabbatch{3}.spm.stats.con.consess{18}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{18}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{19}.tcon.name = 'Animals vs Baseline3';																																			
matlabbatch{3}.spm.stats.con.consess{19}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0
matlabbatch{3}.spm.stats.con.consess{19}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{20}.tcon.name = 'Related Target4';																																			
matlabbatch{3}.spm.stats.con.consess{20}.tcon.convec = [0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{20}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{21}.tcon.name = 'Unrelated Target4';																																			
matlabbatch{3}.spm.stats.con.consess{21}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{21}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{22}.tcon.name = 'Filler vs Baseline4';																																			
matlabbatch{3}.spm.stats.con.consess{22}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{22}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{23}.tcon.name = 'Animals vs Baseline4';																																			
matlabbatch{3}.spm.stats.con.consess{23}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0
matlabbatch{3}.spm.stats.con.consess{23}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{24}.tcon.name = 'Related Target5';																																			
matlabbatch{3}.spm.stats.con.consess{24}.tcon.convec = [0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{24}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{25}.tcon.name = 'Unrelated Target5';																																			
matlabbatch{3}.spm.stats.con.consess{25}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{25}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{26}.tcon.name = 'Filler vs Baseline5';																																			
matlabbatch{3}.spm.stats.con.consess{26}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{26}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{27}.tcon.name = 'Animals vs Baseline5';																																			
matlabbatch{3}.spm.stats.con.consess{27}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0
matlabbatch{3}.spm.stats.con.consess{27}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{28}.tcon.name = 'Related Target6';																																			
matlabbatch{3}.spm.stats.con.consess{28}.tcon.convec = [0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{28}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{29}.tcon.name = 'Unrelated Target6';																																			
matlabbatch{3}.spm.stats.con.consess{29}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{29}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{30}.tcon.name = 'Filler vs Baseline6';																																			
matlabbatch{3}.spm.stats.con.consess{30}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{30}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{31}.tcon.name = 'Animals vs Baseline6';																																			
matlabbatch{3}.spm.stats.con.consess{31}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0
matlabbatch{3}.spm.stats.con.consess{31}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{32}.tcon.name = 'Related Target7';																																			
matlabbatch{3}.spm.stats.con.consess{32}.tcon.convec = [0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{32}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{33}.tcon.name = 'Unrelated Target7';																																			
matlabbatch{3}.spm.stats.con.consess{33}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{33}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{34}.tcon.name = 'Filler vs Baseline7';																																			
matlabbatch{3}.spm.stats.con.consess{34}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{34}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{35}.tcon.name = 'Animals vs Baseline7';																																			
matlabbatch{3}.spm.stats.con.consess{35}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0
matlabbatch{3}.spm.stats.con.consess{35}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{36}.tcon.name = 'Related Target8';																																			
matlabbatch{3}.spm.stats.con.consess{36}.tcon.convec = [0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{36}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{37}.tcon.name = 'Unrelated Target8';																																			
matlabbatch{3}.spm.stats.con.consess{37}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{37}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{38}.tcon.name = 'Filler vs Baseline8';																																			
matlabbatch{3}.spm.stats.con.consess{38}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{38}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{39}.tcon.name = 'Animals vs Baseline8';																																			
matlabbatch{3}.spm.stats.con.consess{39}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0
matlabbatch{3}.spm.stats.con.consess{39}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{40}.tcon.name = 'Related Target9';																																			
matlabbatch{3}.spm.stats.con.consess{40}.tcon.convec = [0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{40}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{41}.tcon.name = 'Unrelated Target9';																																			
matlabbatch{3}.spm.stats.con.consess{41}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{41}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{42}.tcon.name = 'Filler vs Baseline9';																																			
matlabbatch{3}.spm.stats.con.consess{42}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{42}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{43}.tcon.name = 'Animals vs Baseline9';																																			
matlabbatch{3}.spm.stats.con.consess{43}.tcon.convec = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	1
matlabbatch{3}.spm.stats.con.consess{43}.tcon.sessrep = 'replsc';																																			
matlabbatch{3}.spm.stats.con.consess{44}.tcon.name = 'Related Target1';																																			
matlabbatch{3}.spm.stats.con.consess{44}.tcon.convec = [1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{44}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{45}.tcon.name = 'Related Target2';																																			
matlabbatch{3}.spm.stats.con.consess{45}.tcon.convec = [0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{45}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{46}.tcon.name = 'Related Target3';																																			
matlabbatch{3}.spm.stats.con.consess{46}.tcon.convec = [0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{46}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{47}.tcon.name = 'Related Target4';																																			
matlabbatch{3}.spm.stats.con.consess{47}.tcon.convec = [0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{47}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{48}.tcon.name = 'Related Target5';																																			
matlabbatch{3}.spm.stats.con.consess{48}.tcon.convec = [0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{48}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{49}.tcon.name = 'Related Target6';																																			
matlabbatch{3}.spm.stats.con.consess{49}.tcon.convec = [0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{49}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{50}.tcon.name = 'Related Target7';																																			
matlabbatch{3}.spm.stats.con.consess{50}.tcon.convec = [0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{50}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{51}.tcon.name = 'Related Target8';																																			
matlabbatch{3}.spm.stats.con.consess{51}.tcon.convec = [0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{51}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{3}.spm.stats.con.consess{52}.tcon.name = 'Related Target9';																																			
matlabbatch{3}.spm.stats.con.consess{52}.tcon.convec = [0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{3}.spm.stats.con.consess{52}.tcon.sessrep = 'replsc';																																			
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

