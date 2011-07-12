import sys

if sys.platform == 'darwin':
    pre = 'Volumes'
else:
    pre = 'cluster'


# List all of the paradigms you're interested in...
# If just one paradigm, put a comma after
paradigms = ('ATLLoc',)

# This defines from which hemisphere you'll grab the data.
# It's a list because we're interested in both
spaces = ('lh', 'rh')

# This partly determines from which analysis you'll grab the functional data
hrf_shapes = ('fir', 'spm')


# Now, with paradigms, spaces, and hrf_shapes, the analysis is fully specified
# because it's something like ya.{paradigm}.{hrf_shape}.sm8.{space}


# Filenames for all the labels of interest
# The %s will be replaced with each space in the 'spaces' variable above
# DO NOT include the .label in the keys
# Values are approximate Broadman Areas, '???' if you don't know
labels = {'aparc2009-%s-012':'???', 
          'aparc2009-%s-025':'BA39',
          'aparc2009-%s-034':'???',
          'aparc2009-%s-037':'BA20',
          'aparc2009-%s-038':'BA21',
          'aparc2009-%s-044':'BA38',
          'aparc2009-%s-073':'BA20',
          'aparc2009-%s-074':'BA22',
          '%s.BA44':'BA44',
          '%s.BA45':'BA45'}



# Specify which contrasts you'd like to compare
# These contrasts should be in all the paradigms listed above
contrasts = ('Sentences', 'Wordlist','Nonwords')

# This determines where to grab the functional values from.
# Options are:
# 'ces' (contrast estimate)
# 'cespct' (contrast estimate in % signal change) <--- This seems to make the most sense
# 'cesvar' (contrast estimate variance)
# 'cesvarpct' (contrast estimate in $ signal change)
# 'fsig' (unsigned T values)
# 'sig' (signed T values)
map = 'cespct'

# Subject type
stype = 'ya'


# Full table filename
# This is the name of the file that will contain all of the results compiled by 
# make_funcroi_results.py
# The %sFullTable.txt is converted to {paradigm}FullTable.txt
results_fname = '/{0}/kuperberg/SemPrMM/MRI/functionals/roi_summary/%sFullTable.txt'.format(pre)

#ROI Summary folder
roi_dir = '/%s/kuperberg/SemPrMM/MRI/functionals/roi_summary' % pre

#ROI configurations
roi_cfg = '/%s/kuperberg/SemPrMM/MRI/functionals/roi_cfg' % pre

#FSFAST analysis directory
analysis_dir = '/%s/kuperberg/SemPrMM/MRI/functionals/fsfast_analyses' % pre