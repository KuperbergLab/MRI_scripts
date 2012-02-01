this is not python code
# Use this a scratchpad

cd /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/fsaverage/label/
mri_annotation2label --subject fsaverage --hemi lh --annotation lh.aparc.a2009s.annot --labelbase ./aparc2009-lh


good = range(1,75)
cmd = 'labl_load aparc2009-lh-%03d.label;save_tiff /cluster/kuperberg/SemPrMM/MRI/scripts/fsaverage_%03d.tiff;labl_remove 0;\n'
a = [cmd % ((g,)*2) for g in good]
bas = ('BA44', 'BA45')
cmd2 = 'labl_load lh.%s.label; save_tiff /cluster/kuperberg/SemPrMM/MRI/scripts/fsaverage_%s.tiff;labl_remove 0;\n'
b = [cmd2 % (ba,ba) for ba in bas]
f = open('blah.txt', 'w')
map(f.writelines, (a,b))
f.close()
!open blah.txt



cd /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/fsaverage/label/
tksurfer fsaverage lh inflated -gray -tcl $MRISCRIPT/blah.txt


subjects = ('ya1', 'ya2', 'ya3', 'ya4', 'ya5', 'ya6', 'ya7', 'ya8', 'ya9', 'ya10', 'ya12', 'ya13', 'ya15', 'ya16', 'ya17', 'ya18', 'ya19', 'ya20', 'ya21', 'ya22', 'ya23', 'ya24', 'ya25', 'ya26', 'ya27', 'ya29', 'ya30')
cmd = """mri_annotation2label --subject %s --hemi lh --annotation lh.aparc.a2009s.annot --labelbase /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/%s/label/aparc2009-lh\nmri_annotation2label --subject %s --hemi rh --annotation rh.aparc.a2009s.annot --labelbase /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/%s/label/aparc2009-rh\n"""
a = [cmd % (s, s, s, s) for s in subjects]
f = open('blah2.sh', 'w')
map(f.writelines, (a))
f.close()
!open blah2.sh
