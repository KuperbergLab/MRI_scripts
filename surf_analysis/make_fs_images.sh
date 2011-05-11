#!/bin/sh
cd $con_dir
mkdir img
tksurfer $subject $hemil inflated -overlay $overlay -fthresh $thresh -tcl /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/${hemil}_tiff

for image in img/*.tiff
do
convert $image -gravity Center -crop 80%x55%+0+0 $image
done