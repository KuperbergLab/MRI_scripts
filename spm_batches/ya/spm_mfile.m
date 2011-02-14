warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
    if [rm]
        delete('[6mmDir]');
        delete('[8mmDir]');
    end
	fclose(fopen('[working_dir]/[study]_[type][block]_start','w'));
	output = spm_jobman('run_nogui','[script]');
	fclose(fopen('[working_dir]/[study]_[type][block]_run','w'));
catch ME
	sendmail('sburns@nmr.mgh.harvard.edu','[subject] [study] [type] [block] failed.');
end
exit;