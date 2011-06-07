matlabbatch{1}.spm.spatial.preproc.data = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MPRAGE/$MPRAGEXXX/MPRAGE1.nii,1'};
matlabbatch{1}.spm.spatial.preproc.output.GM = [0 0 1];
matlabbatch{1}.spm.spatial.preproc.output.WM = [0 0 1];
matlabbatch{1}.spm.spatial.preproc.output.CSF = [0 0 0];
matlabbatch{1}.spm.spatial.preproc.output.biascor = 1;
matlabbatch{1}.spm.spatial.preproc.output.cleanup = 0;
matlabbatch{1}.spm.spatial.preproc.opts.tpm = {
                                               '/cluster/kuperberg/Software/spm/tpm/grey.nii'
                                               '/cluster/kuperberg/Software/spm/tpm/white.nii'
                                               '/cluster/kuperberg/Software/spm/tpm/csf.nii'
                                               };
matlabbatch{1}.spm.spatial.preproc.opts.ngaus = [2
                                                 2
                                                 2
                                                 4];
matlabbatch{1}.spm.spatial.preproc.opts.regtype = 'mni';
matlabbatch{1}.spm.spatial.preproc.opts.warpreg = 1;
matlabbatch{1}.spm.spatial.preproc.opts.warpco = 25;
matlabbatch{1}.spm.spatial.preproc.opts.biasreg = 0.0001;
matlabbatch{1}.spm.spatial.preproc.opts.biasfwhm = 60;
matlabbatch{1}.spm.spatial.preproc.opts.samp = 3;
matlabbatch{1}.spm.spatial.preproc.opts.msk = {''};
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1) = cfg_dep;
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).tname = 'Parameter File';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).sname = 'Segment: Norm Params Subj->MNI';
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.spatial.normalise.write.subj.matname(1).src_output = substruct('()',{1}, '.','snfile', '()',{':'});
matlabbatch{2}.spm.spatial.normalise.write.subj.resample = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/MPRAGE/$MPRAGEXXX/MPRAGE1.nii,1'};
matlabbatch{2}.spm.spatial.normalise.write.roptions.preserve = 0;
matlabbatch{2}.spm.spatial.normalise.write.roptions.bb = [-78 -112 -70
                                                          78 76 85];
matlabbatch{2}.spm.spatial.normalise.write.roptions.vox = [2 2 2];
matlabbatch{2}.spm.spatial.normalise.write.roptions.interp = 1;
matlabbatch{2}.spm.spatial.normalise.write.roptions.wrap = [0 0 0];
matlabbatch{2}.spm.spatial.normalise.write.roptions.prefix = 'w';


%run it
warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	output = spm_jobman('run_nogui',matlabbatch);
catch ME
	sendmail('sburns@nmr.mgh.harvard.edu','$subject cowrite failed');
end
exit;