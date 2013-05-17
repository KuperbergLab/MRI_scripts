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
set swd = /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra

# python write_surfrend_script.py $conname $connum $swd $thresh $exthresh ## Writes the m file that calls the surfrend_canonical scrript that creates the w files
# 
# echo 'Calling' {$swd}/{$conname}'.m that runs the surfrend_canonical command' 
# 
# 
# cd /autofs/cluster/kuperberg/Software/spm/toolbox/surfrend/
# nohup matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra/$conname'.m'
# 
# ##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer
# 
 cd /autofs/cluster/kuperberg/SemPrMM/MRI/functionals/$subj/$par/stats_outliers/swra
 tksurfer $subj lh inflated -overlay $conname-lh.w -tcl /autofs/cluster/kuperberg/SemPrMM/MRI/scripts/wfile_to_rgb.tcl

convert surfrend_canonical-capture.rgb -colorspace RGB surfrend_canonical-capture.jpg