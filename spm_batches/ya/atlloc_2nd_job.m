%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% ATLLoc 2nd Level Batch Script
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%the dict for this needs to have the following keys:
%new_dir
%Nonwords_images
%WordLists_images
%Sentences_images
%WordListsVNonwords_images
%SentencesVWordLists_images
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One sample T Test Non-word 8mm outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{1}.spm.stats.factorial_design.dir = {'[new_dir]/Nonwords/'};
%%
matlabbatch{1}.spm.stats.factorial_design.des.t1.scans = {[Nonwords_images]};
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
matlabbatch{3}.spm.stats.con.consess{1}.tcon.name = 'Nonwords';
matlabbatch{3}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{3}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{3}.spm.stats.con.delete = 1;
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One sample T Test WordLists 8mm outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{4}.spm.stats.factorial_design.dir = {'[new_dir]/WordLists/'};
%%
matlabbatch{4}.spm.stats.factorial_design.des.t1.scans = {[WordLists_images]};
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
matlabbatch{6}.spm.stats.con.consess{1}.tcon.name = 'WordLists';
matlabbatch{6}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{6}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{6}.spm.stats.con.delete = 1;
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One sample T Test Sentences 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{7}.spm.stats.factorial_design.dir = {'[new_dir]/Sentences/'};
%%
matlabbatch{7}.spm.stats.factorial_design.des.t1.scans = {[Sentences_images]};
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
matlabbatch{9}.spm.stats.con.consess{1}.tcon.name = 'Sentences';
matlabbatch{9}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{9}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{9}.spm.stats.con.delete = 1;
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test WordLists Vs Consonants 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{10}.spm.stats.factorial_design.dir = {'[new_dir]/WordListsVNonwords/'};
%%
matlabbatch{10}.spm.stats.factorial_design.des.t1.scans = {[WordListsVNonwords_images]};
%%
matlabbatch{10}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{10}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{10}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{10}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{10}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{10}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{10}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{11}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{10}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{11}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{11}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{12}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{12}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{12}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{12}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{12}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{12}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{12}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{12}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{11}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{12}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{12}.spm.stats.con.consess{1}.tcon.name = 'NounVNonwords';
matlabbatch{12}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{12}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{12}.spm.stats.con.delete = 1;
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test Sentences Vs WordLists 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{13}.spm.stats.factorial_design.dir = {'[new_dir]/SentencesVWordLists/'};
%%
matlabbatch{13}.spm.stats.factorial_design.des.t1.scans = {[SentencesVWordLists_images]};
%%
matlabbatch{13}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{13}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{13}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{13}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{13}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{13}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{13}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{14}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{13}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{14}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{14}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{15}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{15}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{15}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{15}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{15}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{15}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{15}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{15}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{14}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{15}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{15}.spm.stats.con.consess{1}.tcon.name = 'SentencesVWordLists';
matlabbatch{15}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{15}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{15}.spm.stats.con.delete = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% One Sample T Test Sentences Vs Nonwords 8mm Outliers
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
matlabbatch{16}.spm.stats.factorial_design.dir = {'[new_dir]/SentencesVNonwords/'};
%%
matlabbatch{16}.spm.stats.factorial_design.des.t1.scans = {[SentencesVNonwords_images]};
%%
matlabbatch{16}.spm.stats.factorial_design.cov = struct('c', {}, 'cname', {}, 'iCFI', {}, 'iCC', {});
matlabbatch{16}.spm.stats.factorial_design.masking.tm.tm_none = 1;
matlabbatch{16}.spm.stats.factorial_design.masking.im = 1;
matlabbatch{16}.spm.stats.factorial_design.masking.em = {''};
matlabbatch{16}.spm.stats.factorial_design.globalc.g_omit = 1;
matlabbatch{16}.spm.stats.factorial_design.globalm.gmsca.gmsca_no = 1;
matlabbatch{16}.spm.stats.factorial_design.globalm.glonorm = 1;
matlabbatch{17}.spm.stats.fmri_est.spmmat(1) = cfg_dep;
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).sname = 'Factorial design specification: SPM.mat File';
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).src_exbranch = substruct('.','val', '{}',{16}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{17}.spm.stats.fmri_est.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{17}.spm.stats.fmri_est.method.Classical = 1;
matlabbatch{18}.spm.stats.con.spmmat(1) = cfg_dep;
matlabbatch{18}.spm.stats.con.spmmat(1).tname = 'Select SPM.mat';
matlabbatch{18}.spm.stats.con.spmmat(1).tgt_spec{1}(1).name = 'filter';
matlabbatch{18}.spm.stats.con.spmmat(1).tgt_spec{1}(1).value = 'mat';
matlabbatch{18}.spm.stats.con.spmmat(1).tgt_spec{1}(2).name = 'strtype';
matlabbatch{18}.spm.stats.con.spmmat(1).tgt_spec{1}(2).value = 'e';
matlabbatch{18}.spm.stats.con.spmmat(1).sname = 'Model estimation: SPM.mat File';
matlabbatch{18}.spm.stats.con.spmmat(1).src_exbranch = substruct('.','val', '{}',{17}, '.','val', '{}',{1}, '.','val', '{}',{1});
matlabbatch{18}.spm.stats.con.spmmat(1).src_output = substruct('.','spmmat');
matlabbatch{18}.spm.stats.con.consess{1}.tcon.name = 'SentencesVNonwords';
matlabbatch{18}.spm.stats.con.consess{1}.tcon.convec = 1;
matlabbatch{18}.spm.stats.con.consess{1}.tcon.sessrep = 'none';
matlabbatch{18}.spm.stats.con.delete = 1;
