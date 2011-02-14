warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	output = spm_jobman('run_nogui','[script]');
catch ME
	sendmail('sburns@nmr.mgh.harvard.edu','[study] 2nd level stats failed.');
end
exit;