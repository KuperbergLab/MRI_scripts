#!/bin/sh
mkdir img
tksurfer fsaverage rh inflated -overlay spmT_0001.img -mni152reg -fthresh [tvalue] -tcl rh_tiff	[aparc]
tksurfer fsaverage lh inflated -overlay spmT_0001.img -mni152reg -fthresh [tvalue] -tcl lh_tiff [aparc]
cd img
for side in RH LH ; do 
	for view in Anterior Posterior Medial Lateral Superior Inferior ; do
		convert $side"_"$view.tiff $side"_"$view.jpg
		rm $side"_"$view.tiff
	done
done
cd ..

