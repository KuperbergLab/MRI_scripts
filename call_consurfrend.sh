#!/bin/csh -f
##Usage: ./call_consurfrend.sh Contrast-Name subject Pradigm Threshold Extent-threshold Contrast-Number 
##Example: ./call_consurfrend.sh surfrend_canonical ac1 ATLLoc 0.01 0 1 
## matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/Sofspm/toolbox/surfrend/surfrend_canonical.m surfrend_canonical 1 /cluster/kuperberg/SemPrMM/MRI/functionals/ac1/ATLLoc/stats_outliers/swra/ 0.01 0

##Inputs: 
## contrast name
## Threshold Ex 0.001, 0.0001 
## Extent Threshold 
## Mask



set conname = $1
set connum = $6
set subj = $2 
set par = $3
set thresh = $4
set exthresh = $5
set swd = /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice

## Writes the m file that calls the surfrend_canonical script that creates the w files
python /cluster/kuperberg/SemPrMM/MRI/scripts/write_surfrend_script.py $conname $connum $swd $thresh $exthresh 
  
echo 'Calling' {$swd}/{$conname}'.m that runs the surfrend_canonical command' 
 
## Runs the matlab script that creates the w files
cd /autofs/cluster/kuperberg/Software/spm/toolbox/surfrend/
nohup matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice/$conname'.m'


##LEFT HEMISPHERE 
## Writes the tickle script that specifies the tksurfer Snapshot images and locations
python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd lh $thresh $exthresh ##Specifiy the hemisphere here, default lh
 
##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
cd /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice
tksurfer spm_canonical lh inflated -overlay $conname-lh.w -tcl $conname-lh.tcl
#tksurfer fsaverage lh inflated -overlay $conname-lh.w -tcl /autofs/cluster/kuperberg/SemPrMM/MRI/scripts/wfile_to_rgb.tcl

##convert the rgb images to jpeg
cd /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice
convert $conname-lh-$thresh-$exthresh-Lat.rgb -colorspace RGB $conname-lh-$thresh-$exthresh-Lat.png
convert $conname-lh-$thresh-$exthresh-Ven.rgb -colorspace RGB $conname-lh-$thresh-$exthresh-Ven.png
convert $conname-lh-$thresh-$exthresh-Med.rgb -colorspace RGB $conname-lh-$thresh-$exthresh-Med.png


##RIGHT HEMISPHERE 
## Writes the tickle script that specifies the tksurfer Snapshot images and locations
python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd rh $thresh $exthresh ##Specifiy the hemisphere here, default lh
 
##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
cd /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice
tksurfer spm_canonical rh inflated -overlay $conname-rh.w -tcl $conname-rh.tcl
#tksurfer fsaverage lh inflated -overlay $conname-lh.w -tcl /autofs/cluster/kuperberg/SemPrMM/MRI/scripts/wfile_to_rgb.tcl

##convert the rgb images to jpeg
cd /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra_slice
convert $conname-rh-$thresh-$exthresh-Lat.rgb -colorspace RGB $conname-rh-$thresh-$exthresh-Lat.png
convert $conname-rh-$thresh-$exthresh-Ven.rgb -colorspace RGB $conname-rh-$thresh-$exthresh-Ven.png
convert $conname-rh-$thresh-$exthresh-Med.rgb -colorspace RGB $conname-rh-$thresh-$exthresh-Med.png



