#MRI Processing at the Kuperberg Lab

Note: These things will only work at The Martinos Center for Biomedical Imaging

##About
This folder contains all our scripts for processing MRI data at the Martinos Center. The
most important file is semprmm_pipeline, a python script that steers all processing.

Other interesting files include:

-	MakeMultCond.m that, along with Log2MultCond\_v4.m, transforms .vtsd\_log files to multiple
condition files for use with SPM.
-	spm\_batches/ includes all the spm batch files (for all types of subjects)
-	surf\_analysis/ contains the things for 
-	pipeline.py provides basic functionality to semprmm\_pipeline and can be used in other
Kuperberg MRI pipelines.

## semprmm\_pipeline
This script facilitates the following processing steps:

-	MRI Processing (using SPM and FreeSurfer)
	-	Copying DICOM images from the archives to our cluster
	-	Unpacking/transforming the DICOM images to usable NiFTi files.
	-	Setting up and running preprocessing
	-	Setting up and running first-level statistics 
	-	Setting up and running second-level statistics
	-	Using FreeSurfer to project activity onto the surface and packaging these results into an
easy to browse archive.
-	MEG Processing (using MNE)
	-	Running preprocessing and anatomical processing
	- 	Computing the forward/inverse solution
	
### Usage
The general way to use this script is:
`semprmm_pipeline [options] subject (more subjects)`
You can specify multiple subjects in one call, but at least one. Whatever option(s) you pass will be
applied to all.


### Copying/Unpacking Options
Note the following conventions:

-	DICOM\_DIR is /cluster/kuperberg/SemPrMM/MRI/dicoms/
-	FUNCTIONALS\_DIR is /cluster/kuperberg/SemPrMM/MRI/functionals

####-d,--copy\_dicom
This option copies all the dicom images that were produced by the scanner into your study directory.
It parses the output of 'findsession [subject]' and sets up an rsync job like so: `rysnc -a
[path/from/findsession/] DICOM_DIR/[subject]/`
This is hardcoded to use the newest path.

####--scan\_only
This option runs `unpacksdcmdir -src DICOM_DIR/subject/ -targ FUNCTIONALS_DIR/[subject]/ -scanonly
FUNCTIONALS_DIR/[subject]/scan.log`
The most important output of this is the scan.log file.

####--scan2cfg
This transforms the scan.log file into cfg.txt that is useful for --unpack.

##### Notes
Currently, these MRI runs are unpacked into the FUNCTIONALS\_DIR/[subject] folder:

-	MEMPRAGE\_4e\_p2\_1mm\_iso scans unpack into MPRAGE/
	-	Only the rms image (which has 1 frame and is the best image) is unpacked, not the 4 frame
MEMPRAGE
-	ge\_functionals\_atlloc scans unpack into ATLLoc/
-	field\_mapping scans unpack into FieldMap/
	-	These scans are named FieldMap\_[study after which they were run]\_Phase.nii and
FieldMap\_[study after which they were run]\_Mag.nii
	-	If you didn't collect a FieldMap after a particular study:
		-	After you run this step, copy the closest matching FieldMaps into two XXX directories
(the XXX's don't matter but is some three digit string) and rename them according to the above
format. The rest of the pipeline will fail if this isn't done.
-	ge\_functionals\_maskmm scans unpack into MaskedMM/
-	ge\_functionals\_baleen scans unpack into BaleenMM/
-	MEFLASH\_8e\_1mm\_iso\_5deg scans unpack into MEFLASH/
-	Only the rms scan (which has 1 frame) is unpacked, as opposed to the first MEFLASH scan which
has 8 frames
-	ge\_functionals\_axcpt and ge\_functionals\_axcpt_\sc scans unpack into AXCPT/
-	Any scan in which an error occured (the third column in scan.log) will not be unpacked
-	If this doesn't make sense, see the scan.log file
-	The .nii files are sequentially numbered, e.g. the 5th run of Baleen is named BaleenMM5.nii

####--unpack
This option runs `unpacksdcmdir -src DICOM_DIR/subject/ -targ FUNCTIONALS_DIR/[subject]/ -fsfast -cfg FUNCTIONALS_DIR/[subject]/cfg.txt`
This actually does the major DICOM -> Nifti conversion (and renaming).

#####Notes

-	Because the -fsfast option is used, the .nii files wind up in a directory called 'XXX' where
XXX is a zero-padded number that corresponds to the run number.
-	This (and --scan_only) take a very long time, so try to do this only once.

####-u,--unpack\_all
This options wraps up --scan\_only,--scan2cfg, and --unpack into one easy call. Use this when you're
confident scan.log will turn out nice (i.e. the scanning session went normal).

###Preprocessing Options

####-p,--setup\_preproc
With the images unpacked and converted, it's time to start processing them. The first processing
that occurs is called preprocessing and we use SPM to do this. I've set up a generic batch script
for ATLLoc, MaskedMM, BaleenMM, and AXCPT. These files are found in spm\_batches. 
The four files of interest are atlloc\_preproc\_job.m, axcpt\_preproc\_job.m, baleenmm\_preproc\_job.m, and maskedmm\_preproc\_job.m.

Each of these four files defines a full preprocessing pipeline that includes unwarping and realignment,
slice timing correction, coregistration, segmentation, normalization, and smoothing (open any of
these files SPM's batch editor to see specific details of these jobs).

By design though, all the pathnames in these files are wrong. For example, the phase fieldmap
defined in atlloc\_preproc\_job.m is literally
'/cluster/kuperberg/SemPrMM/MRI/functionals/[subject]/FieldMap/[FieldMapPhaseXXX]/
FieldMap\_ATLLoc\_Phase.nii' which clearly doesn't exist after the unpack command. So, a large part of
this section of the pipeline is taking these 4 generic batches and filling in the correct paths to the unpacked images. This file is written to
FUNCTIONALS\_DIR/[subject]/[study]/jobs/[study]\_preproc\_job.m

The batches themselves are useless without a script to run them, though. A matlab script called
FUNCTIONALS\_DIR/[subject]/[study]/jobs/[study]\_preproc.m is created that looks like this :

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

Finally, all matlab commands are written to a script at [subject]/scripts/all\_preproc.sh

####--run_preproc

This options merely executes the all_preproc.sh script

####--study=STUDY

If you need to preprocess single paradigms individually for whatever reason, use this option with --setup\_preproc and --run\_preproc to specifiy a paradigm/study.
If you do this, the script file made will be called [study]\_preproc.sh.

###First-Level Statistical Processing Options

####-o,--setup\_outliers
This option does the same --setup\_preproc except first-level statistics scripts are setup.

The files of interest are :

-	atlloc\_stats\_job.m
-	maskedmm\_stats\_job.m
-	baleenmm\_stats\_block1\_job.m
-	baleenmm\_stats\_block2\_job.m
-	axcpt\_stats\_job.m

These files define SPM batches for first-level statistical processing.

BaleenMM is broken into blocks (1 is low proportion, 2 is high proportion) because the models are different (different events occur).


####--run_outliers
Executes the [subject]/scripts/all\_stats\_outliers.sh script.

_Make sure you've done the following two things before using this option:_

-	Run art (Sue Gabrieli's artifact detection tool) and created art\_regression\_outliers\_and\_movement\_[RUN NAME].mat
-	Make the multiple condition file for each run using `(matlab prompt)>> MakeMultCond({'(subject)'})`

###Second Level Options

####--setup_second

####--surf_second

####--package_second

####--aparc

####--pvalue = PVALUE

####--dry

####--mask = STUDY,CONTRAST,MASK_IMG

####--exc SUBJECT

####--inc SUBJECT

###Surface Reconstruction Options

####--setup_recon

This writes out a script that will execute FreeSurfer's full cortical reconstruction pipeline. The script it makes looks like this:

	#!/bin/sh
	recon-all -s [subject] -i [MPRAGE1] -i [MPRAGE2] > /cluster/kuperberg/SemPrMM/MRI/functionals/[subject]/scripts/setup_recon.log
	nohup recon-all -all -s [subject] -mail sburns >& /dev/null &

This is written to [subject]/scripts/recon.sh.

####--run_recon

Executes the [subject]/scripts/recon.sh script.

###Miscellaneous options concerning how jobs are run...

####--parallel

I ended up using this command in a lot of places so here's what it means when used with the following commands:

#####--setup_preproc,--setup_outliers,--setup_second

The script file that's made will contain '&' at the end of each matlab line.  This will effectively run all matlab processes in the background and in parallel.

#####--preProc,--preAnat,--makeInv

These MEG scripts are called in parallel, i.e. the script doesn't wait for the script to finish per subject.

####--launchpad

Use this option when you need the pipeline script to wait to return only when all jobs have finished. It's named --launchpad because the Martinos Center's compute cluster is called that.

See [this page](https://gate.nmr.mgh.harvard.edu/wiki/kuperberg-lab/index.php/Launchpad) for more information.

###Tips

####Unpacking abnormal sessions

Let's say that for whatever reason, your MRI session proceeded abnormally. All is not lost, and you can still use most pieces of the pipeline. You can still copy the dicoms normally using the --copy\_dicom option. Next, I would run the --scan_only option and take a look at the scan.log file to see what the scanner made. Depending on how normal the scan.log file looks, you may be able to call --scan2cfg and --unpack together, but here are some examples when you might not want to do that:

-	There are an abnormal amount of functional runs. If your study calls for 8 runs, and there happen to be 11 good runs because the subject couldn't see the projector for the first three.
-	Field maps don't explicitly follow the functional runs they correspond to or you're missing field maps. (more on this later)

In these instances (and other undocumented cases), you'll want to make the cfg file by hand because --scan2cfg is not robust enough. Some rules to follow:

-	The file should be called 'cfg' and located at FUNCTIONAL\_DIR/[subject]/cfg.txt
-	For each run you want to unpack, there should be a line. The first column is the run number (the first column of scan.log). The second is the folder you want to unpack into (this folder will be a subfolder of FUNCTIONAL_DIR/[subject]/. The third column is the file type and unless you have an extremely good reason otherwise, should be nii (Note, if it's not nii, the preprocessing/inference/estimation machinery will NOT work). The last is the filename and this should make sense, e.g. 'MaskedMM2.nii' or 'ATLLoc1.nii'.

If you didn't collect a field map for a functional run but want to use a prior field map in the realign/unwarp stage, you could unpack the same run twice into different filenames. Remember, the first fieldmap run is the magnitude and the second is the phase map.

So, if you make a custom cfg file, then you can skip running --scan2cfg and run --unpack. unpacksdcmdir will use your newly minted cfg file to really unpack the dicoms and you'll know that everything is going to the correct place. Crisis averted!
