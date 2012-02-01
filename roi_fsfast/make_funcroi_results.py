#!/usr/bin/env python

import sys


##This just works for the .shrf analysis currently

#########
# Import different options to work on different things
#import options_baleen as opt
import options_maskedmm_sc as opt
#########


from math import ceil

####################
# REMOVE ME WHEN ANALYSES BUSINESS IS TAKEN CARE OF
#opt.paradigms = ('BaleenHP', 'BaleenLP')
#opt.contrasts = ('Unrelated', 'Related')
#del opt.labels['%s.BA45']
#del opt.labels['%s.BA44']
####################


def dat_dict(paradigm, labels, contrasts, spaces):
    """
    This returned dictionary is layed out in the following way:
    {Label}
       {Contrast}
           {hemi}
               {subject} : value
               {subject} : value
    """
    data = {}
    for label in labels:
        data[label] = {}
        for contrast in contrasts:
            data[label][contrast] = {}
            for sp in spaces:
                input = '%s/dat/%s.%s.%s.shrf.%s.%s.%s.dat' % (opt.roi_dir, opt.stype, paradigm, sp, opt.labels[label], opt.func_map, contrast)
                data[label][contrast][sp] = parse_dat(input)
    return data


def parse_dat(input):
    """
    This parses a .dat file found in the roi_summary folder, returning a dictionary
    keys are subjects, values are ROI values for that subject in this dat file
    """
    from readInput import readTable
    data = readTable(input)
    d = {}
    [d.__setitem__(x[0], x[1]) for x in data]
    return d    

def print_paradigm(data, paradigm, labels, contrasts, spaces):
    """
    subject Contrast1_LH    Contrast1_RH    Contrast2_LH    Contrast2_RH    ...
    {label}
    ya1     +0.123          +0.123          +0.123          +0.123
    
    """
    txt = []    
    keys = sorted(data.keys())
    s_contrasts = sorted(contrasts)
    s_spaces = sorted(spaces)
    header = 'subject\t'
    con_sp = ['%s_%s' % (con, sp) for con in s_contrasts for sp in s_spaces]
    #Find the longest {Contrast}_{Space} string, divide it by 4 (4 spaces in a tab), ceil that number
    #multiply by 4 and add four (for spacing after longest {Contrast}_{Space} string) and int the whole thing
    con_wid = int(ceil(max((len(s) for s in con_sp)) / 4.) * 4 ) + 4
    # add the {Contrast}_{Space} string to the header and take into account the correct number of tabs needed
    header += ''.join(['%s%s' % (cs, '\t' * int(ceil((con_wid - len(cs)) / 4.))) for cs in con_sp])
    txt.append(header)
    # doesn't matter which key, just need subjects from one of the dicts
    first_key = [k for k in labels.keys()][0]
    s_subjects = sorted(data[first_key][contrasts[0]][spaces[0]].keys(),cmp=lambda x, y: cmp(int(x[2:]), int(y[2:])))
    for label in labels.keys():
        lab_txt = """{0} --> {1}""".format(label, labels[label])
        txt.append(lab_txt)
        sub_txt = []
        for sub in s_subjects:
            if len(sub) >= 4:
                end_tab = '\t'
            else:
                end_tab = '\t\t'
            line = '%s%s' % (sub, end_tab)
            #each result will be formateted as +X.XXX
            # this length is 6 when full formatted
            num_fmt = '%+0.3f' 
            #find the amount of tabs needed from end of column to beg of next
            tab_spc = '\t' * int(ceil((con_wid - 6) / 4.))
            #gather results
            results = [data[label][c][sp][sub] for c in s_contrasts for sp in s_spaces]
            #this creates an empty string with the right amt of tabs in between each result placeholder
            fmt = tab_spc.join((num_fmt,) * len(results))
            #append the placeholder text to the subject's line after formatting with results
            line += fmt % tuple([float(x) for x in results])
            #append each individual subject line
            sub_txt.append(line)
        #append to entire text field
        txt.extend(sub_txt)
    #format results file and write out
    f = open(opt.results_fname % (opt.stype, paradigm), 'w')
    f.write('\n'.join(txt))
    f.close()
    
if __name__ == '__main__':
    for paradigm in opt.paradigms:
        #get data
        data = dat_dict(paradigm, opt.labels, opt.contrasts, opt.spaces)
        #write out paradigm data
        print_paradigm(data, paradigm, opt.labels, opt.contrasts, opt.spaces)
    

