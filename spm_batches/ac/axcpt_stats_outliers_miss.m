warning off all;
mkdir('/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$stat_folder/swra_miss/')
matlabbatch{1}.spm.stats.fmri_spec.dir = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$stat_folder/swra_miss/'};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 36;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 18;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,130'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,131'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,132'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,133'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,134'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,135'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,136'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,137'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,138'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,139'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1.nii,140'
                                                    };
%%
%AY
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).name = 'AY';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).onset = [$Run1AYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).duration = [$Run1AYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BX
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).name = 'BX';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).onset = [$Run1BXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).duration = [$Run1BXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BY
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).name = 'BY';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).onset = [$Run1BYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).duration = [$Run1BYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AX
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).name = 'AX';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).onset = [$Run1AXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).duration = [$Run1AXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Misses
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).name = 'Misses';
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).onset = [$Run1AXMissesOnsets,$Run1AYMissesOnsets,$Run1BXMissesOnsets,$Run1BYMissesOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).duration = [$Run1AXMissesDurations,$Run1AYMissesDurations,$Run1BXMissesDurations,$Run1BYMissesDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/$Run1MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,130'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,131'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,132'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,133'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,134'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,135'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,136'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,137'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,138'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,139'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2.nii,140'
                                                    };
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).name = 'AY';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).onset = [$Run2AYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).duration = [$Run2AYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BX
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).name = 'BX';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).onset = [$Run2BXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).duration = [$Run2BXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BY
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).name = 'BY';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).onset = [$Run2BYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).duration = [$Run2BYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AX
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).name = 'AX';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).onset = [$Run2AXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).duration = [$Run2AXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Misses
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).name = 'Misses';
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).onset = [$Run2AXMissesOnsets,$Run2BXMissesOnsets,$Run2AYMissesOnsets,$Run2BYMissesOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).duration = [$Run2AXMissesDurations,$Run2BXMissesDurations,$Run2AYMissesDurations,$Run2BYMissesDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/$Run2MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,130'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,131'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,132'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,133'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,134'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,135'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,136'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,137'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,138'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,139'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/swraAXCPT3.nii,140'
                                                    };
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).name = 'AY';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).onset = [$Run3AYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).duration = [$Run3AYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(1).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BX
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).name = 'BX';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).onset = [$Run3BXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).duration = [$Run3BXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(2).pmod = struct('name', {}, 'param', {}, 'poly', {});
%BY
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).name = 'BY';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).onset = [$Run3BYOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).duration = [$Run3BYDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(3).pmod = struct('name', {}, 'param', {}, 'poly', {});
%AX
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).name = 'AX';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).onset = [$Run3AXOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).duration = [$Run3AXDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(4).pmod = struct('name', {}, 'param', {}, 'poly', {});
%Misses
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).name = 'Misses';
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).onset = [$Run3AXMissesOnsets,$Run3BXMissesOnsets,$Run3AYMissesOnsets,$Run3BYMissesOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).duration = [$Run3AXMissesDurations,$Run3BXMissesDurations,$Run3AYMissesDurations,$Run3BYMissesDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(3).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(3).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run3XXX/$Run3MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(3).hpf = 128;

matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
matlabbatch{1}.spm.stats.fmri_spec.mask = {''};
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'AY';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = [1 0 0 0];
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.name = 'BX';
matlabbatch{3}.spm.stats.con.consess{2}.tcon.convec = [0 1 0 0];
matlabbatch{3}.spm.stats.con.consess{2}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.name = 'BY';
matlabbatch{3}.spm.stats.con.consess{3}.tcon.convec = [0 0 1 0];
matlabbatch{3}.spm.stats.con.consess{3}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.name = 'AX';
matlabbatch{3}.spm.stats.con.consess{4}.tcon.convec = [0 0 0 1];
matlabbatch{3}.spm.stats.con.consess{4}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.name = 'AXvsBX';
matlabbatch{3}.spm.stats.con.consess{5}.tcon.convec = [0 -1 0 1];
matlabbatch{3}.spm.stats.con.consess{5}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.name = 'BXvsAX';
matlabbatch{3}.spm.stats.con.consess{6}.tcon.convec = [0 1 0 -1];
matlabbatch{3}.spm.stats.con.consess{6}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{7}.tcon.name = 'AXvsAY';
matlabbatch{3}.spm.stats.con.consess{7}.tcon.convec = [-1 0 0 1];
matlabbatch{3}.spm.stats.con.consess{7}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{8}.tcon.name = 'AYvsAX';
matlabbatch{3}.spm.stats.con.consess{8}.tcon.convec = [1 0 0 -1];
matlabbatch{3}.spm.stats.con.consess{8}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{9}.tcon.name = 'AYvsBY';
matlabbatch{3}.spm.stats.con.consess{9}.tcon.convec = [1 0 -1 0];
matlabbatch{3}.spm.stats.con.consess{9}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{10}.tcon.name = 'BYvsAY';
matlabbatch{3}.spm.stats.con.consess{10}.tcon.convec = [-1 0 1 0];
matlabbatch{3}.spm.stats.con.consess{10}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{11}.tcon.name = 'BXvsBY';
matlabbatch{3}.spm.stats.con.consess{11}.tcon.convec = [0 1 -1 0];
matlabbatch{3}.spm.stats.con.consess{11}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.consess{12}.tcon.name = 'BYvsBX';
matlabbatch{3}.spm.stats.con.consess{12}.tcon.convec = [0 -1 1 0];
matlabbatch{3}.spm.stats.con.consess{12}.tcon.sessrep = 'replsc';
matlabbatch{3}.spm.stats.con.delete = 1;

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
