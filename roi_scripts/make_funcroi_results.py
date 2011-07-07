#!/usr/bin/env python

import sys

if sys.platform == 'darwin':
    pre = 'Volumes'
else:
    pre = 'cluster'

import options as opt
# There should be opt.paradigms, opt.spaces, opt.hrf_shapes, opt.labels, opt.contrasts, and opt.map

def dat_dict():
    data = {}
    for label in opt.labels:
        data[label] = {}
        for contrast in opt.contrasts:
            for par in opt.paradigms:
                _, _, prop = par.partition('Baleen')
                key = '%s_%s' % (contrast, prop)
                data[label][key] = {}
                for sp in opt.spaces:
                    input = '/%s/kuperberg/SemPrMM/MRI/functionals/roi_summary/Baleen%s.%s.spm.%s.%s.%s.dat' % (pre, prop, sp, label % sp, opt.map, contrast)
                    data[label][key][sp] = parse_dat(input)
    return data


def parse_dat(input):
    from readInput import readTable
    data = readTable(input)
    d = {}
    [d.__setitem__(x[0], x[1]) for x in data]
    return d    


def print_dat():
    #get data
    data = dat_dict()
    txt = []
    keys = sorted(data.keys())
    for label, d in data.iteritems():
        lab_txt = """{0} --> {1}\n%s""".format(label, opt.labels[label])
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
    f = open('/%s/kuperberg/SemPrMM/MRI/functionals/roi_summary/BaleenFullTable.txt' % pre, 'w')
    f.write('\n'.join(txt))
    f.close()
    

print_dat()


