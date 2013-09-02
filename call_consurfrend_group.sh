#!/bin/csh -f
##Usage: ./call_consurfrend_group.sh Contrast-Name modelLocation pval Extent-threshold Contrast-Number 
##Example: ./call_consurfrend_group.sh HighVSLow ac/FlexFactorialBaleen/swra_slice 0.01 0 7 
## matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/Sofspm/toolbox/surfrend/surfrend_canonical.m surfrend_canonical 1 /cluster/kuperberg/SemPrMM/MRI/functionals/ac1/ATLLoc/stats_outliers/swra/ 0.01 0

##Inputs: 
## contrast name
## Threshold Ex 0.001, 0.0001 
## Extent Threshold(Cluster Threshold)  
## Model Ex: ac/FlexFactorialBaleen/swra_slice

set conname = $1
set connum = $5
set model = $2 
#set par = $3
set pval = $3
set exthresh = $4
set swd = /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model

/autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/ac/FlexFactorialBaleen/swra_slice


## Writes the m file that calls the surfrend_canonical script that creates the w files
python write_surfrend_script.py $conname $connum $swd $pval $exthresh 
#   
echo 'Calling' {$swd}/{$conname}'.m that runs the surfrend_canonical command' 
#  
# ## Runs the matlab script that creates the w files
cd /autofs/cluster/kuperberg/Software/spm/toolbox/surfrend/
nohup matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model/$conname'.m'
# 
# # ## Writes the tickle script that specifies the tksurfer Snapshot images and locations
python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd lh $pval $exthresh ##Specifiy the hemisphere here, default lh
python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd rh $pval $exthresh

##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
tksurfer spm_canonical lh inflated -overlay $conname-lh.w -tcl $conname-lh.tcl
#tksurfer fsaverage lh inflated -invphaseflag 1 -overlay $conname-lh.w -tcl /autofs/cluster/kuperberg/SemPrMM/MRI/scripts/wfile_to_rgb.tcl
##-colorscalebarflag 0 -colscalebarvertflag 0
##-scalebarflag 0 -invphaseflag 1

##convert the rgb images to jpeg
cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
convert $conname-lh-$pval-$exthresh-Lat.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Lat.jpg
convert $conname-lh-$pval-$exthresh-Ven.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Ven.jpg
convert $conname-lh-$pval-$exthresh-Med.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Med.jpg

##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
tksurfer spm_canonical rh inflated -overlay $conname-rh.w -tcl $conname-rh.tcl
 
##convert the rgb images to jpeg
convert $conname-rh-$pval-$exthresh-Lat.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Lat.jpg
convert $conname-rh-$pval-$exthresh-Ven.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Ven.jpg
convert $conname-rh-$pval-$exthresh-Med.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Med.jpg
