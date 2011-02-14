%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% BaleenLP 2nd Level Statistics BatchFile
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%replace_dict must contain the following keys
%new_dir
%Rel_images
%UnRel_images
%UnRelVRel_images
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test Related 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
matlabbatch{1}.spm.stats.factorial_design.dir = {'[new_dir]/Rel/'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {[Rel_images]};
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'Rel';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 1;
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test Unrelated 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
matlabbatch{4}.spm.stats.factorial_design.dir = {'[new_dir]/UnRel/'};
%%
matlabbatch{4}.spm.stats.factorial_design.des.t1.scans = {[UnRel_images]};
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
matlabbatch{6}.spm.stats.con.consess{1}.tcon.name = 'UnRel';
matlabbatch{6}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.delete = 1;
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test Unrelated VS Directly Related 8mm outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
matlabbatch{7}.spm.stats.factorial_design.dir = {'[new_dir]/UnRelVRel/'};
%%
matlabbatch{7}.spm.stats.factorial_design.des.t1.scans = {[UnRelVRel_images]};
%%
matlabbatch{7}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{7}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{7}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{7}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{7}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{7}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{7}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{8}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{7}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{8}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{8}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{9}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{9}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{9}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{9}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{9}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{9}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{9}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{9}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{8}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{9}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{9}.spm.stats.con.consess{1}.tcon.name = 'UnRelVRel';
matlabbatch{9}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{9}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{9}.spm.stats.con.delete = 1;