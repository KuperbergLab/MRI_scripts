warning off all;
try
	spm('defaults','fmri');
	spm_jobman('initcfg');
    if $rm
        delete('$SixDir');
        delete('$EightDir');
    end
	fclose(fopen('$start_file','w'));
	output = spm_jobman('run_nogui','$script');
	fclose(fopen('$run_file','w'));
catch ME
	sendmail('sburns@nmr.mgh.harvard.edu','$subject $study $type $block failed.');
end
exit;