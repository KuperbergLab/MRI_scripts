#!/bin/sh
mkdir img
tksurfer fsaverage rh inflated -overlay spmT_0001.img -mni152reg -fthresh $tvalue -tcl rh_tiff	$aparc
tksurfer fsaverage lh inflated -overlay spmT_0001.img -mni152reg -fthresh $tvalue -tcl lh_tiff $aparc

convert img/RH_Anterior.tiff img/RH_Anterior.jpg
rm img/RH_Anterior.tiff
convert img/RH_Posterior.tiff img/RH_Posterior.jpg
rm img/RH_Posterior.tiff
convert img/RH_Medial.tiff img/RH_Medial.jpg
rm img/RH_Medial.tiff
convert img/RH_Lateral.tiff img/RH_Lateral.jpg
rm img/RH_Lateral.tiff
convert img/RH_Superior.tiff img/RH_Superior.jpg
rm img/RH_Superior.tiff
convert img/RH_Inferior.tiff img/RH_Inferior.jpg
rm img/RH_Inferior.tiff

convert img/LH_Anterior.tiff img/LH_Anterior.jpg
rm img/LH_Anterior.tiff
convert img/LH_Posterior.tiff img/LH_Posterior.jpg
rm img/LH_Posterior.tiff
convert img/LH_Medial.tiff img/LH_Medial.jpg
rm img/LH_Medial.tiff
convert img/LH_Lateral.tiff img/LH_Lateral.jpg
rm img/LH_Lateral.tiff
convert img/LH_Superior.tiff img/LH_Superior.jpg
rm img/LH_Superior.tiff
convert img/LH_Inferior.tiff img/LH_Inferior.jpg
rm img/LH_Inferior.tiff


