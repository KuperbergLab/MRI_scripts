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

###########
# Import different options for different stuff
#import options_baleen as opt
import options_maskedmm_ya as opt
###########


import pipeline
from os.path import join as pj

##############
# No more editing unless you know what you're doing
##############
i = 1
ii = 1
config_com = []
sess_com = []
table_com = []
for par in opt.paradigms:
    for sp in opt.spaces:
        for sh in opt.hrf_shapes:
            if sh == 'fir':
                frame = '6'
            else:
                frame = '0'    
            for label in opt.labels:
                roidef = '%s/%s' % (opt.roi_cfg, '.'.join((par, sp, sh, opt.labels[label], 'roicfg')))
                print roidef
                analysis = '%s.%s.sm8.%s' % (par, sh, sp)
                for contrast in opt.contrasts:
                    output = '%s/dat/%s' % (opt.roi_dir, '.'.join((opt.stype,par, sp, sh, opt.labels[label], opt.func_map, contrast, 'dat')))
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
                                            '-sf %s.group-analysis/%s.%s.sessid' % (opt.stype, opt.stype, par),
                                            '-d /cluster/kuperberg/SemPrMM/MRI/functionals/',
                                            '-contrast %s' % contrast,
                                            '-map %s' % opt.func_map,
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
                                        '-sf %s.group-analysis/%s.%s.sessid' % (opt.stype, opt.stype, par),
                                        '-d /cluster/kuperberg/SemPrMM/MRI/functionals/',
                                        '-roi %s' % roidef,
                                        ' &',
                                        '\n',
                                        wait]))


fnames = ('/cluster/kuperberg/SemPrMM/MRI/scripts/roi_fsfast/shscripts/'+opt.stype+par+'_config.sh', '/cluster/kuperberg/SemPrMM/MRI/scripts/roi_fsfast/shscripts/'+opt.stype+par+'_sess.sh', '/cluster/kuperberg/SemPrMM/MRI/scripts/roi_fsfast/shscripts/'+opt.stype+par+'_table.sh')
print fnames[0]
commands = (config_com, sess_com, table_com)

for fname, command in zip(fnames, commands):
    with open(fname, 'w') as f:
        f.writelines(command)
        print("Wrote %s" % fname)
    pipeline.make_file_exec(fname)
