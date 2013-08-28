#!/bin/csh -f
##Usage: ./call_consurfrend_group_AllCon.sh modelLocation pval Extent-threshold
##Example: ./call_consurfrend_group_AllCon.sh ac/FlexFactorialBaleen/swra_slice 0.01 0 
## matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/Sofspm/toolbox/surfrend/surfrend_canonical.m surfrend_canonical 1 /cluster/kuperberg/SemPrMM/MRI/functionals/ac1/ATLLoc/stats_outliers/swra/ 0.01 0

##Inputs: 
## Threshold Ex 0.001, 0.05 
## Extent Threshold(Cluster Threshold)  
## Model Ex: ac/FlexFactorialBaleen/swra_slice

set model = $1 
set pval = $2
set exthresh = $3
set swd = /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model

## Writes the m file that calls the surfrend_canonical script that creates the w files
python write_surfrend_script_AllCon.py $swd $pval $exthresh 
  
echo 'Calling' {$swd}/'AllContrasts.m that runs the surfrend_canonical command for each contrast ' 
 
## Runs the matlab script that creates the w files
#cd /autofs/cluster/kuperberg/Software/spm/toolbox/surfrend/
cd /cluster/kuperberg/SemPrMM/MRI/scripts
nohup matlab7.11 -nosplash -nodesktop -nodisplay < /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model/'AllContrasts.m'

# ## Writes the tickle script that specifies the tksurfer Snapshot images and locations
# python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd lh $pval $exthresh ##Specifiy the hemisphere here, default lh
# #python /cluster/kuperberg/SemPrMM/MRI/scripts/write_tickle_script.py $conname $swd rh $pval $exthresh

##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
#cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
#tksurfer spm_canonical lh inflated -invphaseflag 1 -overlay $conname-lh.w -tcl $conname-lh.tcl
#tksurfer fsaverage lh inflated -invphaseflag 1 -overlay $conname-lh.w -tcl /autofs/cluster/kuperberg/SemPrMM/MRI/scripts/wfile_to_rgb.tcl
##-colorscalebarflag 0 -colscalebarvertflag 0
##-scalebarflag 0 -invphaseflag 1

# ##convert the rgb images to jpeg
# cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
# convert $conname-lh-$pval-$exthresh-Lat.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Lat.jpg
# convert $conname-lh-$pval-$exthresh-Ven.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Ven.jpg
# convert $conname-lh-$pval-$exthresh-Med.rgb -colorspace RGB $conname-lh-$pval-$exthresh-Med.jpg
# 
# ##Visualisation of SPM output(w files)in the inflated subject averages using tksurfer 
# #cd /autofs/cluster/kuperberg/SemPrMM/MRI/results/SecondLevelStats/$model
# #tksurfer spm_canonical rh inflated -invphaseflag 1 -overlay $conname-rh.w -tcl $conname-rh.tcl
#  
# ##convert the rgb images to jpeg
# convert $conname-rh-$pval-$exthresh-Lat.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Lat.jpg
# convert $conname-rh-$pval-$exthresh-Ven.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Ven.jpg
# convert $conname-rh-$pval-$exthresh-Med.rgb -colorspace RGB $conname-rh-$pval-$exthresh-Med.jpg


#convert *.rgb -colorspace RGB *.jpg
