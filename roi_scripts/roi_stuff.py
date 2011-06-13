#THIS IS NOT A SCRIPT, MORE OF A COOKBOOK RIGHT NOW

#make (advanced) labels for fsaverage
cd /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/fsaverage/label/
mri_annotation2label --subject fsaverage --hemi lh --annotation lh.aparc.a2009s.annot --labelbase ./aparc2009-lh


#write out a tcl script for so tksurfer makes an image for each label
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

#run the previously made script
cd /cluster/kuperberg/SemPrMM/MRI/structurals/subjects/fsaverage/label/
tksurfer fsaverage lh inflated -gray -tcl $MRISCRIPT/blah.txt


#make labels
subjects = ('ya1', 'ya2', 'ya3', 'ya4', 'ya5', 'ya6', 'ya7', 'ya8', 'ya9', 'ya10', 'ya12', 'ya13', 'ya15', 'ya16', 'ya17', 'ya18', 'ya19', 'ya20', 'ya21', 'ya22', 'ya23', 'ya24', 'ya25', 'ya26', 'ya27', 'ya29', 'ya30')
cmd = """mri_annotation2label --subject %s --hemi lh --annotation {0}/%s/label/lh.aparc.a2009s.annot --labelbase {0}/%s/label/aparc2009-lh\nmri_annotation2label --subject %s --hemi rh --annotation {0}/%s/label/rh.aparc.a2009s.annot --labelbase {0}/%s/label/aparc2009-rh\n""".format('/cluster/kuperberg/SemPrMM/MRI/structurals/subjects')
a = [cmd % (s, s, s, s, s, s) for s in subjects]
f = open('blah2.sh', 'w')
_ = map(f.writelines, (a))
f.close()
!open blah2.sh



#ROI stuff
# cd /cluster/kuperberg/SemPrMM/MRI/functionals


# space.label.map.thr.sign.roicfg


-contrast All -thresh 1.0 -sign pos

funcroi-config -roi lh.074.cespct.roicfg -label aparc2009-lh-074.label -analysis ya.BaleenHP.spm.sm8.lh -force
funcroi-sess -sf ya.BaleenHP.sessid -d . -roi lh.074.cespct.roicfg
funcroi-table-sess -roi lh.074.cespct.roicfg -sf ya.BaleenHP.sessid -analysis ya.BaleenHP.spm.sm8.lh -contrast Unrelated -o roi_summary/lh.074.cespct.dat 

funcroi-config -roi lh.074.ces.roicfg -label aparc2009-lh-074.label -analysis ya.BaleenHP.spm.sm8.lh -force
funcroi-sess -sf ya.BaleenHP.sessid -d . -roi lh.074.ces.roicfg
funcroi-table-sess -roi lh.074.ces.roicfg -sf ya.BaleenHP.sessid -analysis ya.BaleenHP.spm.sm8.lh -contrast Unrelated -map cespct -o roi_summary/lh.074.ces.dat
diff roi_summary/lh.074.cespct.dat roi_summary/lh.074.ces.dat



####################################
#
# Code below generates three files, config.sh, sess.sh, and table.sh
#
# config.sh - funcroi-config, only call once
# sess.sh - updates, call it with new subjects
# table.sh - doesn't update, call it with new subjects
#
####################################
mask_con = 'All'
mask_map = 'sig'
mask_tail = 'pos'


config_com = []
sess_com = []
table_com = []
i = 1
ii = 1
pars = ('BaleenHP', 'BaleenLP')
space = ('lh', 'rh')
shape = ('fir', 'spm')
labels = ('012', '025', '034', '037', '038', '044', '073', '074') #, 
labels = ('BA44', 'BA45')
contrasts = ('Unrelated', 'Related')
map = 'cespct'


for par in pars:
    for sp in space:
        for sh in shape:
            if sh == 'fir':
                frame = '6'
            else:
                frame = '0'    
            for label in labels:
                roidef = '.'.join((par, sp, sh, label, 'roicfg'))
                analysis = 'ya.%s.%s.sm8.%s' % (par, sh, sp)
                for contrast in contrasts:
                    output = 'roi_summary/%s' % '.'.join((par, sp, sh, label, map, contrast, 'dat'))
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
                                            '-d .',
                                            '-contrast %s' % contrast,
                                            '-map %s' % map,
                                            '-frame %s' % frame,
                                            '&',
                                            '\n',
                                            wait1]))
                #funcroi-config
                if len(label) < 4:
                    label_text = 'aparc2009-%s-%s.label' % (sp, label)
                else:
                    label_text = '%s.%s.label' % (sp, label)
                config_com.append(' '.join(['funcroi-config',
                                        '-roi %s' % roidef,
                                        '-label %s' % label_text,
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
                                        '-d .',
                                        '-roi %s' % roidef,
                                        ' &',
                                        '\n',
                                        wait]))



script_fname = 'roi_scripts/config.sh'
f = open(script_fname, 'w')
f.writelines(config_com)
f.close()

script_fname = 'roi_scripts/sess.sh'
f = open(script_fname, 'w')
f.writelines(sess_com)
f.close()

script_fname = 'roi_scripts/table.sh'
f = open(script_fname, 'w')
f.writelines(table_com)
f.close()

!open roi_scripts/*.sh
####################################

lab2BA = {'012':'???', '025':'BA39', '034':'???', '037':'BA20', '038':'BA21', '044':'BA38', '073':'BA20', '074':'BA22'}

%+.3d


def print_dat():
    #get data
    data = dat_dict()
    txt = []
    keys = sorted(data.keys())
    for label, d in data.iteritems():
        lab_txt = """{0} --> {1}\n%s""".format(label, lab2BA[label])
        sk = tuple(sorted(d.keys()))
        con_line = ''.join(('\t\t%s',) * 4) % sk
        lr_line = '\t\t'+'\t\t'.join(('L\t\tR',) * 3) + '\t\t\tL\t\tR'
        subjects = sorted(d[sk[0]]['lh'].keys(), cmp=lambda x, y: cmp(int(x[2:]), int(y[2:])))
        all_sub = []
        for sub in subjects:
            if len(sub) >= 4:
                end_tab = '\t'
            else:
                end_tab = '\t\t'
            subject_line = '{0}{1}%s'.format(sub, end_tab)
            num_fmt = '%+0.3f\t%+0.3f'
            n_spacing = '\t'.join((num_fmt,) * 3) + '\t\t%s' % num_fmt
            s_line = subject_line % n_spacing
            num = []
            for k in sk:
                for sp in ('lh', 'rh'):
                    num.append(float(d[k][sp][sub]))
            all_sub.append(s_line % tuple(num))
        full = '\n'.join((con_line, lr_line, '\n'.join(all_sub)))
        txt.append(lab_txt % full)
    f = open('roi_summary/BaleenFullTable.txt', 'w')
    f.write('\n'.join(txt))
    f.close()
    

print_dat()
!open roi_summary/BaleenFullTable.txt


def dat_dict():
    #lets only do spm for now
    data = dict({})
    for label in labels:
        data[label] = dict({})
        for contrast in contrasts:
            for prop in ('LP', 'HP'):
                key = '%s_%s' % (contrast, prop)
                data[label][key] = dict({})
                for sp in space:
                    input = 'roi_summary/Baleen%s.%s.spm.%s.%s.%s.dat' % (prop, sp, label, map, contrast)
                    data[label][key][sp] = parse_dat(input)
    return data


def parse_dat(input):
    from readInput import readTable
    data = readTable(input)
    d = dict({})
    [d.__setitem__(x[0], x[1]) for x in data]
    return d    
    
    
    
    