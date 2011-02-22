#MRI Processing at the Kuperberg Lab

Note: These things will only work at The Martinos Center for Biomedical Imaging

##About
This folder contains all our scripts for processing MRI data at the Martinos Center. The
most important file is semprmm_pipeline, a python script that steers all processing.

Other interesting files include:
*	MakeMultCond.m that, along with Log2MultCond\_v4.m, transforms .vtsd\_log files to multiple condition files for use with SPM.
*	spm\_batches/ includes all the spm batch files (for all types of subjects)
*	surf\_analysis/ contains the things for 
*	pipeline.py provides basic functionality to semprmm_pipeline and can be used in other Kuperberg MRI pipelines.

## semprmm\_pipeline
This script facilitates the following processing steps:
*	MRI Processing (using SPM and FreeSurfer)
	*	Copying DICOM images from the archives to our cluster
	*	Unpacking/transforming the DICOM images to usable NiFTi files.
	*	Setting up and running preprocessing
	*	Setting up and running first-level statistics 
	*	Setting up and running second-level statistics
	*	Using FreeSurfer to project activity onto the surface and packaging these results into an easy to browse archive.
*	MEG Processing (using MNE)
	*	Running preprocessing and anatomical processing
	* 	Computing the forward/inverse solution
	
### Usage
The general way to use this script is:
`semprmm_pipeline [options] subject (more subjects)`
You can specify multiple subjects in one call, but at least one. Whatever option(s) you pass will be applied to all.

### Options
Note the following conventions:
*	DICOM_DIR is /cluster/kuperberg/SemPrMM/MRI/dicoms/
*	FUNCTIONALS\_DIR is /cluster/kuperberg/SemPrMM/MRI/functionals

####-d,--copy_dicom
This option copies all the dicom images that were produced by the scanner into your study directory. It parses the output of 'findsession [subject]' and sets up an rsync job like so: `rysnc -a [path/from/findsession/] DICOM_DIR/[subject]/`
This is hardcoded to use the newest path.

####--scan_only
This option runs `unpacksdcmdir -src DICOM_DIR/subject/ -targ FUNCTIONALS_DIR/[subject]/ -scanonly FUNCTIONALS_DIR/[subject]/scan.log`
The most important output of this is the scan.log file.

####--scan2cfg
This transforms the scan.log file into cfg.txt that is useful for --unpack.

####--unpack
This option runs `unpacksdcmdir -src DICOM_DIR/subject/ -targ FUNCTIONALS_DIR/[subject]/ -fsfast -cfg FUNCTIONALS_DIR/[subject]/cfg.txt`
This actually does the file conversion.

####-u,--unpack_all
This options wraps up --scan_only,--scan2cfg, and --unpack into one easy call. Use then when you're confident scan.log will turn out nice.

####-p,--setup_preproc
This option sets up SPM batches (that define the processing steps) and scripts (that talk to MATLAB) for all the studies.

####-o,--setup_outliers
This option does the same --setup_preproc except first-level statistics scripts are setup.
