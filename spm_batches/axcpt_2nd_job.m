%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% AXCPT 2nd Level Batch Script
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%the dict for this needs to have the following keys:
%new_dir
%AYvBY_images
%BXvBY_images
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One sample T Test AYvsBY 8mm outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{1}.spm.stats.factorial_design.dir = {'[new_dir]/AYvBY/'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {[AYvBY_images]};
%%
matlabbatch{1}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{1}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{1}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{1}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{1}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{2}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{2}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{3}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{3}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{3}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{3}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{3}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{3}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{3}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{3}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{3}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'AYvBY';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 1;
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One sample T Test BXvsBY 8mm outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{4}.spm.stats.factorial_design.dir = {'[new_dir]/BXvBY/'};
%%
matlabbatch{4}.spm.stats.factorial_design.des.t1.scans = {[BXvBY_images]};
%%
matlabbatch{4}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{4}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{4}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{4}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{4}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{4}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{4}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{5}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{4}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{5}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{5}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{6}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{6}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{6}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{6}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{6}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{6}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{6}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{6}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{5}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{6}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{6}.spm.stats.con.consess{1}.tcon.name = 'BXvBY';
matlabbatch{6}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.delete = 1;
%
%
