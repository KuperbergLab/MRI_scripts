%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 3944 $)
%-----------------------------------------------------------------------
%
matlabbatch{1}.spm.stats.con.spmmat = {'/autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenHP/$stat_folder/s10wra/SPM.mat'};
matlabbatch{1}.spm.stats.con.consess{1}.tcon.name = 'RelatedUnrelatedAll';
matlabbatch{1}.spm.stats.con.consess{1}.tcon.convec = [1 -1 1 -1];
matlabbatch{1}.spm.stats.con.consess{1}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.consess{2}.tcon.name = 'RelatedAll';
matlabbatch{1}.spm.stats.con.consess{2}.tcon.convec = [1 0 1 0];
matlabbatch{1}.spm.stats.con.consess{2}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.consess{3}.tcon.name = 'UnrelatedAll';
matlabbatch{1}.spm.stats.con.consess{3}.tcon.convec = [0 1 0 1];
matlabbatch{1}.spm.stats.con.consess{3}.tcon.sessrep = 'bothsc';
matlabbatch{1}.spm.stats.con.delete = 0;

warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
%	delete('$EightSPM');
	fclose(fopen('$start_file','w'));
	output = spm_jobman('run_nogui',matlabbatch);
	fclose(fopen('$run_file','w'));
	ec = 0;
catch ME
	ec = 1;
end
exit(ec);

