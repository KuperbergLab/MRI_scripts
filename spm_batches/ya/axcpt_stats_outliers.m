warning off all;
mkdir('/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$stat_folder/swra_slice/')
matlabbatch{1}.spm.stats.fmri_spec.dir = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$stat_folder/swra_slice/'};
matlabbatch{1}.spm.stats.fmri_spec.timing.units = 'secs';
matlabbatch{1}.spm.stats.fmri_spec.timing.RT = 2;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t = 36;
matlabbatch{1}.spm.stats.fmri_spec.timing.fmri_t0 = 18;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(1).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,130'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,131'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,132'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,133'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,134'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,135'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,136'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,137'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,138'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,139'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,140'
 						    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,141'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,142'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,143'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,144'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,145'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,146'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,147'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,148'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,149'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,150'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,151'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,152'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,153'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,154'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,155'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,156'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,157'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,158'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,159'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,160'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,161'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,162'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,163'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,164'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,165'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,166'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,167'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,168'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,169'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,170'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,171'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,172'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,173'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,174'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,175'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,176'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,177'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,178'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,179'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,180'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,181'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,182'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,183'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,184'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,185'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,186'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,187'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,188'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,189'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,190'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,191'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,192'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,193'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,194'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,195'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,196'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,197'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,198'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,199'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,200'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,201'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,202'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,203'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,204'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,205'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,206'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,207'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,208'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,209'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,210'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,211'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,212'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,213'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,214'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,215'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,216'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,217'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,218'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,219'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,220'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,221'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,222'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,223'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,224'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,225'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,226'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,227'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,228'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,229'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,230'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,231'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,232'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,233'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,234'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,235'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,236'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,237'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,238'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,239'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/swraAXCPT1_r4D.nii,240'
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
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).onset = [$Run1AXMissesOnsets $Run1AYMissesOnsets $Run1BXMissesOnsets $Run1BYMissesOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).duration = [$Run1AXMissesDurations $Run1AYMissesDurations $Run1BXMissesDurations $Run1BYMissesDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(1).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(1).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run1XXX/$Run1MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(1).hpf = 128;
%%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).scans = {
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,1'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,2'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,3'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,4'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,5'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,6'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,7'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,8'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,9'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,10'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,11'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,12'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,13'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,14'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,15'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,16'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,17'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,18'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,19'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,20'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,21'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,22'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,23'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,24'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,25'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,26'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,27'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,28'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,29'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,30'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,31'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,32'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,33'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,34'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,35'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,36'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,37'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,38'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,39'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,40'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,41'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,42'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,43'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,44'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,45'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,46'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,47'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,48'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,49'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,50'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,51'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,52'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,53'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,54'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,55'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,56'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,57'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,58'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,59'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,60'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,61'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,62'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,63'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,64'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,65'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,66'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,67'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,68'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,69'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,70'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,71'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,72'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,73'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,74'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,75'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,76'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,77'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,78'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,79'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,80'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,81'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,82'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,83'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,84'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,85'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,86'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,87'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,88'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,89'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,90'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,91'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,92'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,93'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,94'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,95'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,96'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,97'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,98'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,99'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,100'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,101'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,102'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,103'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,104'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,105'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,106'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,107'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,108'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,109'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,110'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,111'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,112'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,113'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,114'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,115'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,116'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,117'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,118'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,119'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,120'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,121'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,122'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,123'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,124'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,125'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,126'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,127'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,128'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,129'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,130'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,131'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,132'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,133'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,134'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,135'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,136'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,137'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,138'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,139'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,140'
 						    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,141'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,142'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,143'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,144'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,145'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,146'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,147'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,148'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,149'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,150'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,151'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,152'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,153'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,154'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,155'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,156'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,157'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,158'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,159'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,160'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,161'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,162'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,163'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,164'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,165'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,166'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,167'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,168'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,169'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,170'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,171'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,172'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,173'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,174'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,175'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,176'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,177'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,178'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,179'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,180'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,181'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,182'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,183'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,184'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,185'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,186'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,187'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,188'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,189'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,190'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,191'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,192'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,193'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,194'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,195'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,196'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,197'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,198'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,199'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,200'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,201'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,202'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,203'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,204'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,205'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,206'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,207'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,208'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,209'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,210'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,211'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,212'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,213'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,214'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,215'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,216'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,217'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,218'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,219'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,220'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,221'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,222'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,223'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,224'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,225'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,226'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,227'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,228'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,229'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,230'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,231'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,232'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,233'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,234'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,235'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,236'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,237'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,238'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,239'
                                                    '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/swraAXCPT2_r4D.nii,240'
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
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).onset = [$Run2AXMissesOnsets $Run2BXMissesOnsets $Run2AYMissesOnsets $Run2BYMissesOnsets];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).duration = [$Run2AXMissesDurations $Run2BXMissesDurations $Run2AYMissesDurations $Run2BYMissesDurations];
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).tmod = 0;
matlabbatch{1}.spm.stats.fmri_spec.sess(2).cond(5).pmod = struct('name', {}, 'param', {}, 'poly', {});
%
%
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi = {''};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
matlabbatch{1}.spm.stats.fmri_spec.sess(2).multi_reg = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/AXCPT/$Run2XXX/$Run2MR'};
matlabbatch{1}.spm.stats.fmri_spec.sess(2).hpf = 128;
matlabbatch{1}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
matlabbatch{1}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
matlabbatch{1}.spm.stats.fmri_spec.volt = 1;
matlabbatch{1}.spm.stats.fmri_spec.global = 'None';
matlabbatch{1}.spm.stats.fmri_spec.mask = {'/autofs/cluster/kuperberg/Software/spm/templates/mask20_no_eyeballs.nii,1'};
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
