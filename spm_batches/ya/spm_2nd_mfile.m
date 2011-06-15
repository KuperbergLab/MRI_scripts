warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
	output = spm_jobman('run_nogui','$batch');
	sendmail('sburns@nmr.mgh.harvard.edu','$study $contrast 2nd level stats succeeded.');
catch ME
	sendmail('sburns@nmr.mgh.harvard.edu','$study $contrast 2nd level stats failed.');
end
exit;