%-----------------------------------------------------------------------
% Job configuration created by cfg_util (rev $Rev: 3944 $)
%-----------------------------------------------------------------------
warning off all;
matlabbatch{1}.spm.stats.con.spmmat(1) = {'/cluster/kuperberg/SemPrMM/MRI/functionals/$subject/BaleenHP/stats_outliers/swra_fir/SPM.mat'};
matlabbatch{1}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{1}.spm.stats.con.spmmat(1).tgt_spec = {};
matlabbatch{1}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{1}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{1}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{1}.spm.stats.con.consess{1}.tcon.name = 'Related Target1';																																			
matlabbatch{1}.spm.stats.con.consess{1}.tcon.convec = [1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{1}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{2}.tcon.name = 'Related Target2';																																			
matlabbatch{1}.spm.stats.con.consess{2}.tcon.convec = [0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{2}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{3}.tcon.name = 'Related Target3';																																			
matlabbatch{1}.spm.stats.con.consess{3}.tcon.convec = [0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{3}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{4}.tcon.name = 'Related Target4';																																			
matlabbatch{1}.spm.stats.con.consess{4}.tcon.convec = [0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{4}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{5}.tcon.name = 'Related Target5';																																			
matlabbatch{1}.spm.stats.con.consess{5}.tcon.convec = [0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{5}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{6}.tcon.name = 'Related Target6';																																			
matlabbatch{1}.spm.stats.con.consess{6}.tcon.convec = [0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{6}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{7}.tcon.name = 'Related Target7';																																			
matlabbatch{1}.spm.stats.con.consess{7}.tcon.convec = [0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{7}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{8}.tcon.name = 'Related Target8';																																			
matlabbatch{1}.spm.stats.con.consess{8}.tcon.convec = [0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{8}.tcon.sessrep = 'replsc';																																			
%																																			
matlabbatch{1}.spm.stats.con.consess{9}.tcon.name = 'Related Target9';																																			
matlabbatch{1}.spm.stats.con.consess{9}.tcon.convec = [0	0	0	0	0	0	0	0	1	0	0	0	0	0	0	0	0	-1	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0];
matlabbatch{1}.spm.stats.con.consess{9}.tcon.sessrep = 'replsc';																																																																			
%																																
matlabbatch{1}.spm.stats.con.delete = 0;



try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	%delete('$EightSPM');
	fclose(fopen('$start_file','w'));
	output = spm_jobman('run_nogui',matlabbatch);
	fclose(fopen('$run_file','w'));
	ec = 0;
catch ME
	ec = 1;
end
exit(ec);

