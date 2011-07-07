#!/usr/bin/env python

####################################
#
# Code below generates three files, config.sh, sess.sh, and table.sh
#
# config.sh - funcroi-config, only call once
# sess.sh - updates, call it with new subjects
# table.sh - doesn't update, call it with new subjects
#
####################################

# List all of the paradigms you're interested in...
paradigms = ('BaleenHP', 'BaleenLP')

# This defines from which hemisphere you'll grab the data.
# It's a list because we're interested in both
spaces = ('lh', 'rh')

# This partly determines from which analysis you'll grab the functional data
hrf_shapes = ('fir', 'spm')


# Now, with paradigms, spaces, and hrf_shapes, the analysis is fully specified
# because it's something like ya.{paradigm}.{hrf_shape}.sm8.{space}


# Filenames for all the labels of interest
# The %s will be replaced with each space in the 'spaces' variable above
# DO NOT include the .label
labels = ('aparc2009-%s-012', 
          'aparc2009-%s-025',
          'aparc2009-%s-034',
          'aparc2009-%s-037',
          'aparc2009-%s-038',
          'aparc2009-%s-044',
          'aparc2009-%s-073',
          'aparc2009-%s-074',
          '%s.BA44',
          '%s.BA45')

# Specify which contrasts you'd like to compare
# These contrasts should be in all the paradigms listed above
contrasts = ('Unrelated', 'Related')

# This determines where to grab the functional values from.
# Options are:
# 'ces' (contrast estimate)
# 'cespct' (contrast estimate in % signal change) <--- This seems to make the most sense
# 'cesvar' (contrast estimate variance)
# 'cesvarpct' (contrast estimate in $ signal change)
# 'fsig' (unsigned T values)
# 'sig' (signed T values)
map = 'cespct'



##############
# No more editing unless you know what you're doing
##############
i = 1
ii = 1
config_com = []
sess_com = []
table_com = []
for par in paradigms:
    for sp in spaces:
        for sh in hrf_shapes:
            if sh == 'fir':
                frame = '6'
            else:
                frame = '0'    
            for label in labels:
                roidef = '.'.join((par, sp, sh, label % sp, 'roicfg'))
                analysis = 'ya.%s.%s.sm8.%s' % (par, sh, sp)
                for contrast in contrasts:
                    output = 'roi_summary/%s' % '.'.join((par, sp, sh, label % sp, map, contrast, 'dat'))
                    #funcoir-table-sess
                    ii += 1
                    if ii > 8:
                        wait1 = 'wait\n'
                        ii = 1
                    else:
                        wait1 = ''
                    table_com.append(' '.join(['funcroi-table-sess',
                                            '-o %s' % output,
                                            '-roi %s' % roidef,
                                            '-analysis %s' % analysis,
                                            '-sf ya.BaleenHP.sessid',
                                            '-d /cluster/kuperberg/SemPrMM/MRI/functionals/',
                                            '-contrast %s' % contrast,
                                            '-map %s' % map,
                                            '-frame %s' % frame,
                                            '&',
                                            '\n',
                                            wait1]))
                #funcroi-config
                config_com.append(' '.join(['funcroi-config',
                                        '-roi %s' % roidef,
                                        '-label %s' % '%s.label' % (label % sp) ,
                                        '-analysis %s' % analysis,
                                        '\n']))
                i += 1
                if i > 8:
                    wait = 'wait\n'
                    i = 1
                else:
                    wait = ''
                #funcroi-sess
                sess_com.append(' '.join(['funcroi-sess',
                                        '-sf ya.%s.sessid' % par,
                                        '-d /cluster/kuperberg/SemPrMM/MRI/functionals/',
                                        '-roi %s' % roidef,
                                        ' &',
                                        '\n',
                                        wait]))


fnames = ('config.sh', 'sess.sh', 'table.sh')
commands = (config_com, sess_com, table_com)

for fname, command in zip(fnames, commands):
    with open(fname, 'w') as f:
        f.writelines(command)
        print("Wrote %s" % fname)
