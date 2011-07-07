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

import options as opt
# There should be opt.paradigms, opt.spaces, opt.hrf_shapes, opt.labels, opt.contrasts, and opt.map


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
                roidef = '.'.join((par, sp, sh, label % sp, 'roicfg'))
                analysis = 'ya.%s.%s.sm8.%s' % (par, sh, sp)
                for contrast in opt.contrasts:
                    output = 'roi_summary/%s' % '.'.join((par, sp, sh, label % sp, opt.map, contrast, 'dat'))
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
