#!/bin/sh

#Enter a fsaverage label and a subject, this morphs the label back to the subject space and creates a label in the subject's FS directory. Note you don't need to do this for anatomical parcellation labels, that is done with mri_annotation2label. fsaverage label needs to be in subjects/fsaverage/label/

#Ex: ./label2label.sh BaleenHP_c1_c2_350-450_cluster0-lh ya1

cd $SUBJECTS_DIR

mri_label2label \
  --srcsubject fsaverage \
  --srclabel fsaverage/label/$1.label \
  --trgsubject $2 \
  --trglabel $2/label/$1.label \
  --hemi lh \
  --regmethod surface