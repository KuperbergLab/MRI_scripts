#!/usr/bin/env python
##usage: python logs2accuracy.py ac ac_mri_axcpt AXCPT

import sys
import os 
import os.path
import readInput
from operator import itemgetter, attrgetter
from glob import glob 

modalities = ['MRI']
studies = ['MaskedMM','BaleenMM','AXCPT']
subjType = ['ac', 'sc', 'ya']
studies_tasks = dict({'MaskedMM':[4, 5],'BaleenMM':[5, 10, 11, 12],'AXCPT':[4]})
studies_notasks = dict({'MaskedMM':[1, 2, 3], 'BaleenMM':[1, 2, 4, 6, 7, 8, 9],'AXCPT':[1,2,3] })
study_code = dict({'BaleenMM':9,'MaskedMM':9,'AXCPT':9})
study_rt = dict({'BaleenMM':12,'MaskedMM':12,'AXCPT':12})
code_names = dict({'MaskedMM':['DirRel','IndRel','Unrel','InsPr','InsTar'],
					'BaleenMM':['LRelTar','LUnrTar','LUnrFil','LAnTar','HRelTar','HUnrTar','HRelFil',
								'HUnrFil','HAnTar','LAnPr','HAnPr'],
					'AXCPT':['AY','BY','BX','AX']})


def parse_logfile(path):
	all_lines = []
        rt_ax = 0
        rt_ay = 0
        rt_by = 0
        rt_bx = 0
        ax_trials = 0
        bx_trials = 0
        by_trials = 0
        ay_trials =0
        rt_avg_ay= 0
        rt_avg_by= 0
        rt_avg_bx= 0
        rt_avg_ax =0
	with open(path,'r') as f:
		all_lines = f.read()
	f.close()
	all_lines = all_lines.splitlines()
	all_split = [line.split() for line in all_lines]
	#all_split[i][16] is code, all_split[i][19] is rt
	study = all_split[0][0]
        loglen = len(all_split)
	if study == 'AXCPT_SC' or study=='AX-CPT': #vtsd logs for ac and sc have _SC tagged to their name. 
		study = 'AXCPT'
	elif study =='MaskedMM_SC':
                study = 'MaskedMM'
	if study not in studies:
		return [study, None]
	results = dict()
	all_codes = set([line[study_code[study]] for line in all_split])
	#print all_codes
	with open('/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/AXCPT_diff.log','a') as f:

                for code in all_codes:
                        results[code] = [0,0]
                for i,line in enumerate(all_split):
                        code = line[study_code[study]]
                        rt = float(line[study_rt[study]])
                        results[code] = [results[code][0],results[code][1]+1]
                        if int(code) in studies_notasks[study] and rt < 1:
                                        results[code] = [results[code][0]+1,results[code][1]]
                        elif (int(code) in studies_tasks[study] 
                                and (rt > 0 or 
                                (i+1 < len(all_split) 
                                and (0 <= float(all_split[i+1][study_rt[study]]) - float(line[5]) <= 1.4) ) ) ):
                                        results[code] = [results[code][0]+1,results[code][1]]
                        if study == 'AXCPT':
                           if float(line[12]) != 0:
                                rx_t = rt - float(line[5]) #RT subtracted from the presented time(secs)
                                if line[7] != 'A' and line[8] == 'X':
                                        rt_bx += rx_t
                                        bx_trials +=1
                                elif line[7] != 'A' and line[8] != 'X':
                                        rt_by += rx_t
                                        by_trials +=1
                                elif line[7] == 'A' and line[8] != 'X':
                                        rt_ay += rx_t
                                        ay_trials +=1
                                elif line[7] == 'A' and line[8] == 'X':
                                        rt_ax += rx_t
                                        ax_trials +=1 
                           if line[7] == 'A' and line[8] == 'X' and float(line[12]) ==0:
                                    if i != loglen -1:
                                            next_line = all_split[i+1]
                                            if next_line[12]!=0:
                                                 diff = float(next_line[12]) - float(line[12])
                                                 if 0.0 <(diff) < 3.00:
                                                     print diff, i
                                                     f.write(str(diff))
                                                     f.write('/n')
                                             
        rt_avg_ax = float(rt_ax/(ax_trials))
        if bx_trials !=0:
                rt_avg_bx = rt_bx/(bx_trials)
        if ay_trials !=0:
                rt_avg_ay = rt_ay/(ay_trials)
        if by_trials !=0:
                rt_avg_by = rt_by/(by_trials)
        print ax_trials
        f.close()
        return results, rt_avg_ay, rt_avg_by, rt_avg_bx, rt_avg_ax 


def parse_study(modality,study,subjects,listPrefix):
	all_subs = dict()
        rt_ax_avg =[]
        rt_ay_avg=[]
        rt_bx_avg = []
        rt_by_avg =[]
        rt_avg_ay= 0
        rt_avg_by= 0
        rt_avg_bx= 0
        rt_avg_ax =0
        for i, sub in enumerate(subjects):
                print sub
                rt_ax_tot= 0
                rt_ay_tot= 0
                rt_bx_tot = 0
                rt_by_tot =0
		subj_results = dict()
		study_logs =  glob(os.path.join('/cluster/kuperberg/SemPrMM/',modality,'vtsd_logs',sub,study+'*log'))
		for log in study_logs:
                        print log
			results, rt_ay, rt_by, rt_bx, rt_ax  = parse_logfile(log)
			for key in results.keys():
				code_results = results[key]
				if key in subj_results:
					subj_results[key] = [code_results[0]+subj_results[key][0],code_results[1]+subj_results[key][1]]
				else:
					subj_results[key] = code_results
                        rt_ax_tot+=rt_ax
                        rt_ay_tot+=rt_ay
                        rt_bx_tot+=rt_bx
                        rt_by_tot+=rt_by
                rt_ax_avg.append(round(rt_ax_tot/len(study_logs),3))
                rt_ay_avg.append(round(rt_ay_tot/len(study_logs),3))
                rt_bx_avg.append(round(rt_bx_tot/len(study_logs),3))
                rt_by_avg.append(round(rt_by_tot/len(study_logs),3))
                all_subs[sub] = subj_results
	return all_subs, rt_ax_avg, rt_ay_avg, rt_bx_avg, rt_by_avg
	
def get_subjects(modality,study,subjType):
	path = os.path.join('/cluster/kuperberg/SemPrMM/',modality,'vtsd_logs')+os.sep
	all_dirs = [name for name in os.listdir(path) if os.path.isdir(os.path.join(path, name))]
	#print(all_dirs)
	if subjType == 'ac':
                subs =  [subj for subj in all_dirs if subj.startswith('a')]
        elif subjType == 'sc':
                subs =  [subj for subj in all_dirs if subj.startswith('s')]
        else:
                subs =  [subj for subj in all_dirs if subj.startswith('y')]
        ##subs = ['ya1' 'ya2'
	return [sub for sub in subs if len(glob(os.path.join(path,sub,study+'*log'))) > 0]


def mriaccuracy2R(modality,study,subjType, listPrefix):
        data_path = '/cluster/kuperberg/SemPrMM/MRI/'
        inFile1 = data_path + 'results/behavioral_accuracy/' + modality + '_'+ listPrefix + '_' + str(study)+ "_accuracy-short.log"
        outFile1 = data_path + 'results/behavioral_accuracy/R/' + modality + '_'+ listPrefix +'_' + str(study)+ "_accuracy.log"    
        totalTrials = 0 # Must be initialised within the loop to refresh for each subject :) 
        dataTable1=[]
        dataTable2=[]
        lineTemp = []
        lineTemp1 = []
        temp = 1
        header = []
        if os.path.exists(inFile1):
            print("File exists")
        else:
            print("Check the input paradigm file name")
        myFile1 = open(inFile1, "r") 
        while temp:
             temp = myFile1.readline()
             temp1 = temp.strip() # not ('')
             if temp1:
                  temp2 = temp1.split()
                  dataTable1.append(temp2) # Save information as a list of items in a DataTable
                  runCount=len(dataTable1)   
        myFile1.close()
        header = dataTable1[0]
        cond_len = len(header)
        myFile2 = open(outFile1, "w")
        myFile2.write("Sub:\t\tCond\t\tAccuracy\n")	
        for i in range(1, runCount):
               lineTemp = (dataTable1[i])
               for j in range(1,cond_len-1):
                        myFile2.write(lineTemp[0][:-1] + '\t\t')  #the [:-1] reference removes the closing colon from the subject code
                        myFile2.write(header[j] + '\t\t')
                        myFile2.write(lineTemp[j] + '\n')
                        myFile2.write('\n')
        

def main(subjType, listPrefix, study):
        rt_ax_avg= []
        rt_ay_avg= []
        rt_bx_avg = []
        rt_by_avg = []
        for mod in modalities:
		##for study in studies:
			##subjects = get_subjects(mod,study,subjType)
                        subjects = readInput.readList('/cluster/kuperberg/SemPrMM/MRI/scripts/input/' +listPrefix)
			print(subjects)
			print(study)
			study_results, rt_ax_avg, rt_ay_avg, rt_bx_avg, rt_by_avg = parse_study(mod,study,subjects,listPrefix)
                        with open('/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/'+mod+'_'+listPrefix+'_'+study+'_accuracy-short.log','w') as f:
				f.write('sub:\t')#write out header
				for code in code_names[study]:
					f.write(code+'\t')
				if study == 'AXCPT':
                                        f.write('AllTasks\tAX_RT\tAY_RT\tBX_RT\tBY_RT\n')
                                else:
                                        f.write('AllTasks\n')                                      
				for i, sub in enumerate(subjects):
                                #for i, sub in enumerate(sorted(study_results.keys(), reverse=True)):
					num = den = 0
					f.write(sub+':\t')
					results = study_results[sub]
					#sort codes numerically
					codes = sorted([int(key) for key in results.keys()])
					num = sum([item[0] for code,item in results.items() if int(code) in studies_tasks[study]])
					den = sum([item[1] for code,item in results.items() if int(code) in studies_tasks[study]])
					sorted_results = [float(results[str(code)][0])/float(results[str(code)][1]) for code in codes]
					for result in sorted_results:
				            f.write(str(round(result,3))+'\t')
					f.write(str(round(float(num)/den,3))+'\t')
					if study == 'AXCPT':
                                                f.write(str(rt_ay_avg[i])+'\t')
                                                f.write(str(rt_by_avg[i])+'\t')
                                                f.write(str(rt_bx_avg[i])+'\t')
                                                f.write(str(rt_ax_avg[i])+'\n')
                        mriaccuracy2R(mod,study,subjType, listPrefix)
        print("Completed. See results in /MRI/results/behavioral_accuracy/R/ folder")
						
if __name__ == "__main__":
	main(sys.argv[1], sys.argv[2], sys.argv[3])
