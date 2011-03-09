#!/bin/sh
cd $con_dir
mkdir img
tksurfer fsaverage rh inflated -overlay spmT_0001.img -mni152reg -fthresh $tvalue -tcl rh_tiff	$aparc
tksurfer fsaverage lh inflated -overlay spmT_0001.img -mni152reg -fthresh $tvalue -tcl lh_tiff $aparc 

compsite -blend 100x100 img/RH_Anterior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Anterior_arrow.jpg img/RH_Anterior.jpg
rm img/RH_Anterior.tiff
composite -blend 100x100 img/RH_Posterior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Posterior_arrow.jpg img/RH_Posterior.jpg
rm img/RH_Posterior.tiff
composite -blend 100x100 img/RH_Medial.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Medial_arrow.jpg img/RH_Medial.jpg
rm img/RH_Medial.tiff
composite -blend 100x100 img/RH_Lateral.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Lateral_arrow.jpg img/RH_Lateral.jpg
rm img/RH_Lateral.tiff
composite -blend 100x100 img/RH_Superior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Superior_arrow.jpg img/RH_Superior.jpg
rm img/RH_Superior.tiff
composite -blend 100x100 img/RH_Inferior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/RH_Inferior_arrow.jpg img/RH_Inferior.jpg
rm img/RH_Inferior.tiff

composite -blend 100x100 img/LH_Anterior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Anterior_arrow.jpg img/LH_Anterior.jpg
rm img/LH_Anterior.tiff
composite -blend 100x100 img/LH_Posterior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Posterior_arrow.jpg img/LH_Posterior.jpg
rm img/LH_Posterior.tiff
composite -blend 100x100 img/LH_Medial.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Medial_arrow.jpg img/LH_Medial.jpg
rm img/LH_Medial.tiff
composite -blend 100x100 img/LH_Lateral.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Lateral_arrow.jpg img/LH_Lateral.jpg
rm img/LH_Lateral.tiff
composite -blend 100x100 img/LH_Superior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Superior_arrow.jpg img/LH_Superior.jpg
rm img/LH_Superior.tiff
composite -blend 100x100 img/LH_Inferior.tiff /cluster/kuperberg/SemPrMM/MRI/scripts/surf_analysis/LH_Inferior_arrow.jpg img/LH_Inferior.jpg
rm img/LH_Inferior.tiff


