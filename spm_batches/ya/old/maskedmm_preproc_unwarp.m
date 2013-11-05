% CHANGE ME
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.phase = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/FieldMap/$FieldMapPhaseXXX/FieldMap_MaskedMM_Phase.nii,1'};
% CHANGE ME
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.magnitude = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/FieldMap/$FieldMapMagXXX/FieldMap_MaskedMM_Mag.nii,1'};
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.et = [4.92 7.38];
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.maskbrain = 0;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.blipdir = 1;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.tert = 32;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.epifm = 0;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.ajm = 0;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.uflags.method = 'Mark3D';
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.uflags.fwhm = 10;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.uflags.pad = 0;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.uflags.ws = 1;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.template = {'/cluster/kuperberg/Software/spm/templates/T1.nii'};
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.fwhm = 5;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.nerode = 2;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.ndilate = 4;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.thresh = 0.5;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.defaults.defaultsval.mflags.reg = 0.02;
% CHANGE ME
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.session(1).epi = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,1'};
% CHANGE ME
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.session(2).epi = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,1'};
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.matchvdm = 1;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.sessname = 'session';
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.writeunwarped = 1;
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.anat = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MPRAGE/$MPRAGEXXX/MPRAGE1.nii,1'};
matlabbatch{1}.spm.tools.fieldmap.presubphasemag.subj.matchanat = 1;
%%
% CHANGE ME
matlabbatch{2}.spm.spatial.realignunwarp.data(1).scans = {
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,1'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,2'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,3'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,4'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,5'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,6'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,7'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,8'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,9'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,10'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,11'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,12'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,13'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,14'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,15'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,16'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,17'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,18'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,19'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,20'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,21'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,22'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,23'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,24'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,25'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,26'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,27'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,28'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,29'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,30'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,31'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,32'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,33'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,34'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,35'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,36'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,37'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,38'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,39'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,40'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,41'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,42'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,43'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,44'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,45'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,46'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,47'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,48'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,49'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,50'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,51'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,52'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,53'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,54'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,55'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,56'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,57'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,58'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,59'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,60'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,61'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,62'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,63'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,64'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,65'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,66'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,67'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,68'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,69'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,70'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,71'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,72'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,73'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,74'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,75'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,76'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,77'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,78'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,79'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,80'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,81'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,82'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,83'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,84'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,85'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,86'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,87'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,88'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,89'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,90'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,91'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,92'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,93'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,94'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,95'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,96'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,97'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,98'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,99'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,100'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,101'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,102'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,103'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,104'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,105'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,106'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,107'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,108'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,109'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,110'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,111'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,112'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,113'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,114'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,115'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,116'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,117'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,118'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,119'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,120'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,121'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,122'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,123'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,124'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,125'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,126'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,127'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,128'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,129'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,130'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,131'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,132'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,133'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,134'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,135'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,136'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,137'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,138'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,139'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,140'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,141'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,142'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,143'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,144'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,145'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,146'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,147'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run1XXX/MaskedMM1.nii,148'
                                                          };
%%
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1) = cfg_dep;
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).tname = 'Phase map (vdm* file)';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(1).value = 'image';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).sname = 'Presubtracted Phase and Magnitude Data: Voxel displacement map (Subj 1, Session 1)';
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.spatial.realignunwarp.data(1).pmscan(1).src_output = substruct('()',{1}, '.','vdmfile', '{}',{1});
%%
% CHANGE ME
matlabbatch{2}.spm.spatial.realignunwarp.data(2).scans = {
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,1'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,2'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,3'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,4'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,5'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,6'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,7'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,8'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,9'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,10'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,11'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,12'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,13'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,14'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,15'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,16'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,17'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,18'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,19'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,20'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,21'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,22'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,23'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,24'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,25'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,26'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,27'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,28'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,29'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,30'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,31'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,32'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,33'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,34'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,35'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,36'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,37'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,38'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,39'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,40'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,41'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,42'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,43'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,44'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,45'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,46'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,47'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,48'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,49'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,50'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,51'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,52'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,53'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,54'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,55'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,56'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,57'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,58'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,59'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,60'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,61'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,62'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,63'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,64'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,65'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,66'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,67'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,68'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,69'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,70'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,71'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,72'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,73'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,74'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,75'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,76'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,77'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,78'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,79'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,80'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,81'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,82'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,83'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,84'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,85'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,86'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,87'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,88'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,89'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,90'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,91'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,92'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,93'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,94'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,95'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,96'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,97'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,98'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,99'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,100'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,101'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,102'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,103'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,104'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,105'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,106'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,107'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,108'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,109'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,110'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,111'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,112'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,113'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,114'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,115'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,116'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,117'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,118'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,119'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,120'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,121'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,122'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,123'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,124'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,125'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,126'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,127'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,128'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,129'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,130'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,131'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,132'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,133'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,134'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,135'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,136'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,137'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,138'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,139'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,140'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,141'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,142'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,143'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,144'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,145'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,146'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,147'
                                                          '/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MaskedMM/$Run2XXX/MaskedMM2.nii,148'
                                                          };
%%
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1) = cfg_dep;
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).tname = 'Phase map (vdm* file)';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(1).value = 'image';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).sname = 'Presubtracted Phase and Magnitude Data: Voxel displacement map (Subj 1, Session 2)';
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.spatial.realignunwarp.data(2).pmscan(1).src_output = substruct('()',{1}, '.','vdmfile', '{}',{2});
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.quality = 0.9;
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.sep = 4;
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.fwhm = 5;
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.rtm = 0;
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.einterp = 4;
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.ewrap = [0 0 0];
matlabbatch{2}.spm.spatial.realignunwarp.eoptions.weight = {''};
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.basfcn = [12 12];
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.regorder = 1;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.lambda = 100000;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.jm = 0;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.fot = [4 5];
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.sot = [];
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.uwfwhm = 4;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.rem = 1;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.noi = 5;
matlabbatch{2}.spm.spatial.realignunwarp.uweoptions.expround = 'Average';
matlabbatch{2}.spm.spatial.realignunwarp.uwroptions.uwwhich = [2 1];
matlabbatch{2}.spm.spatial.realignunwarp.uwroptions.rinterp = 4;
matlabbatch{2}.spm.spatial.realignunwarp.uwroptions.wrap = [0 0 0];
matlabbatch{2}.spm.spatial.realignunwarp.uwroptions.mask = 1;
matlabbatch{2}.spm.spatial.realignunwarp.uwroptions.prefix = 'ur';
matlabbatch{3}.spm.temporal.st.scans{1}(1) = cfg_dep;
matlabbatch{3}.spm.temporal.st.scans{1}(1).tname = 'Session';
matlabbatch{3}.spm.temporal.st.scans{1}(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.temporal.st.scans{1}(1).tgt_spec{1}(1).value = 'image';
matlabbatch{3}.spm.temporal.st.scans{1}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.temporal.st.scans{1}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.temporal.st.scans{1}(1).sname = 'Realign & Unwarp: Unwarped Images (Sess 1)';
matlabbatch{3}.spm.temporal.st.scans{1}(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.temporal.st.scans{1}(1).src_output = substruct('.','sess', '()',{1}, '.','uwrfiles');
matlabbatch{3}.spm.temporal.st.scans{2}(1) = cfg_dep;
matlabbatch{3}.spm.temporal.st.scans{2}(1).tname = 'Session';
matlabbatch{3}.spm.temporal.st.scans{2}(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.temporal.st.scans{2}(1).tgt_spec{1}(1).value = 'image';
matlabbatch{3}.spm.temporal.st.scans{2}(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.temporal.st.scans{2}(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.temporal.st.scans{2}(1).sname = 'Realign & Unwarp: Unwarped Images (Sess 2)';
matlabbatch{3}.spm.temporal.st.scans{2}(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.temporal.st.scans{2}(1).src_output = substruct('.','sess', '()',{2}, '.','uwrfiles');
matlabbatch{3}.spm.temporal.st.nslices = 36;
matlabbatch{3}.spm.temporal.st.tr = 2;
matlabbatch{3}.spm.temporal.st.ta = 1.94444444444444;
matlabbatch{3}.spm.temporal.st.so = [1 3 5 7 9 11 13 15 17 19 21 23 25 27 29 31 33 35 2 4 6 8 10 12 14 16 18 20 22 24 26 28 30 32 34 36];
matlabbatch{3}.spm.temporal.st.refslice = 1;
matlabbatch{3}.spm.temporal.st.prefix = 'a';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1) = cfg_dep;
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).tname = 'Reference Image';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).tgt_spec{1}(1).value = 'image';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).tgt_spec{1}(2).value = 'e';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).sname = 'Realign & Unwarp: Unwarped Mean Image';
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{4}.spm.spatial.coreg.estwrite.ref(1).src_output = substruct('.','meanuwr');
% CHANGE ME
matlabbatch{4}.spm.spatial.coreg.estwrite.source = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MPRAGE/$MPRAGEXXX/MPRAGE1.nii,1'};
matlabbatch{4}.spm.spatial.coreg.estwrite.other = {''};
matlabbatch{4}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
matlabbatch{4}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
matlabbatch{4}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
matlabbatch{4}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
matlabbatch{4}.spm.spatial.coreg.estwrite.roptions.interp = 1;
matlabbatch{4}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
matlabbatch{4}.spm.spatial.coreg.estwrite.roptions.mask = 0;
matlabbatch{4}.spm.spatial.coreg.estwrite.roptions.prefix = 'c';
matlabbatch{5}.spm.spatial.preproc.data(1) = cfg_dep;
matlabbatch{5}.spm.spatial.preproc.data(1).tname = 'Data';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.spatial.preproc.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.spatial.preproc.data(1).sname = 'Coreg: Estimate & Reslice: Coregistered Images';
matlabbatch{5}.spm.spatial.preproc.data(1).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.spatial.preproc.data(1).src_output = substruct('.','cfiles');
matlabbatch{5}.spm.spatial.preproc.output.GM = [0 0 1];
matlabbatch{5}.spm.spatial.preproc.output.WM = [0 0 1];
matlabbatch{5}.spm.spatial.preproc.output.CSF = [0 0 0];
matlabbatch{5}.spm.spatial.preproc.output.biascor = 1;
matlabbatch{5}.spm.spatial.preproc.output.cleanup = 0;
matlabbatch{5}.spm.spatial.preproc.opts.tpm = {
                                               '/cluster/kuperberg/Software/spm/tpm/grey.nii'
                                               '/cluster/kuperberg/Software/spm/tpm/white.nii'
                                               '/cluster/kuperberg/Software/spm/tpm/csf.nii'
                                               };
matlabbatch{5}.spm.spatial.preproc.opts.ngaus = [2
                                                 2
                                                 2
                                                 4];
matlabbatch{5}.spm.spatial.preproc.opts.regtype = 'mni';
matlabbatch{5}.spm.spatial.preproc.opts.warpreg = 1;
matlabbatch{5}.spm.spatial.preproc.opts.warpco = 25;
matlabbatch{5}.spm.spatial.preproc.opts.biasreg = 0.0001;
matlabbatch{5}.spm.spatial.preproc.opts.biasfwhm = 60;
matlabbatch{5}.spm.spatial.preproc.opts.samp = 3;
matlabbatch{5}.spm.spatial.preproc.opts.msk = {''};
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tname = 'Parameter File';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).sname = 'Segment: Norm Params Subj->MNI';
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_exbranch = substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.matname(1).src_output = substruct('()',{1}, '.','snfile', '()',{':'});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tname = 'Images to Write';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(1).value = 'image';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).sname = 'Slice Timing: Slice Timing Corr. Images (Sess 1)';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(1).src_output = substruct('()',{1}, '.','files');
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2) = cfg_dep;
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tname = 'Images to Write';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(1).value = 'image';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).sname = 'Slice Timing: Slice Timing Corr. Images (Sess 2)';
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).src_exbranch = substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.spatial.normalise.write.subj.resample(2).src_output = substruct('()',{2}, '.','files');
matlabbatch{6}.spm.spatial.normalise.write.roptions.preserve = 0;
matlabbatch{6}.spm.spatial.normalise.write.roptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{6}.spm.spatial.normalise.write.roptions.vox = [2 2 2];
matlabbatch{6}.spm.spatial.normalise.write.roptions.interp = 4;
matlabbatch{6}.spm.spatial.normalise.write.roptions.wrap = [0 0 0];
matlabbatch{6}.spm.spatial.normalise.write.roptions.prefix = 'w';
matlabbatch{7}.spm.spatial.smooth.data(1) = cfg_dep;
matlabbatch{7}.spm.spatial.smooth.data(1).tname = 'Images to Smooth';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{7}.spm.spatial.smooth.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{7}.spm.spatial.smooth.data(1).sname = 'Normalise: Write: Normalised Images (Subj 1)';
matlabbatch{7}.spm.spatial.smooth.data(1).src_exbranch = substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{7}.spm.spatial.smooth.data(1).src_output = substruct('()',{1}, '.','files');
matlabbatch{7}.spm.spatial.smooth.fwhm = [6 6 6];
matlabbatch{7}.spm.spatial.smooth.dtype = 0;
matlabbatch{7}.spm.spatial.smooth.im = 0;
matlabbatch{7}.spm.spatial.smooth.prefix = 's6';
% new smooth
matlabbatch{8}.spm.spatial.smooth.data(1) = cfg_dep;
matlabbatch{8}.spm.spatial.smooth.data(1).tname = 'Images to Smooth';
matlabbatch{8}.spm.spatial.smooth.data(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{8}.spm.spatial.smooth.data(1).tgt_spec{1}(1).value = 'image';
matlabbatch{8}.spm.spatial.smooth.data(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{8}.spm.spatial.smooth.data(1).tgt_spec{1}(2).value = 'e';
matlabbatch{8}.spm.spatial.smooth.data(1).sname = 'Normalise: Write: Normalised Images (Subj 1)';
matlabbatch{8}.spm.spatial.smooth.data(1).src_exbranch = substruct('.','val', '{}',{6}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{8}.spm.spatial.smooth.data(1).src_output = substruct('()',{1}, '.','files');
matlabbatch{8}.spm.spatial.smooth.fwhm = [8 8 8];
matlabbatch{8}.spm.spatial.smooth.dtype = 0;
matlabbatch{8}.spm.spatial.smooth.im = 0;
matlabbatch{8}.spm.spatial.smooth.prefix = 's8';



warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	fclose(fopen('$start_file','w'));
	output = spm_jobman('run_nogui',matlabbatch);
	fclose(fopen('$run_file','w'));
	ec = 0;
catch ME
	ec = 1;
end
exit(ec);