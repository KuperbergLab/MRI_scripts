#!/usr/bin/env python

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
	with open(path,'r') as f:
		all_lines = f.read()
	f.close()
	all_lines = all_lines.splitlines()
	all_split = [line.split() for line in all_lines]
	#all_split[i][16] is code, all_split[i][19] is rt
	study = all_split[0][0]
	#print(study)
	if study == 'AXCPT_SC' or study=='AX-CPT': #vtsd logs for ac and sc have _SC tagged to their name. 
		study = 'AXCPT'
	elif study =='MaskedMM_SC':
                study = 'MaskedMM'
	if study not in studies:
		return [study, None]
	#print(study)
	results = dict()
	all_codes = set([line[study_code[study]] for line in all_split])
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
	return results


def parse_study(modality,study,subjects):
	all_subs = dict()
	for sub in subjects:
		subj_results = dict()
		study_logs =  glob(os.path.join('/cluster/kuperberg/SemPrMM/',modality,'vtsd_logs',sub,study+'*log'))
		##print(study_logs)
		for log in study_logs:
			results= parse_logfile(log)
			for key in results.keys():
				code_results = results[key]
				if key in subj_results:
					subj_results[key] = [code_results[0]+subj_results[key][0],code_results[1]+subj_results[key][1]]
				else:
					subj_results[key] = code_results
		all_subs[sub] = subj_results
	return all_subs
	
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
               #print(lineTemp[0][:-1])
               for j in range(1,cond_len-1):
                             myFile2.write(lineTemp[0][:-1] + '\t\t')  #the [:-1] reference removes the closing colon from the subject code
                             myFile2.write(header[j] + '\t\t')
                             myFile2.write(lineTemp[j])
                             myFile2.write('\n')
        

def main(subjType, listPrefix, study):
        for mod in modalities:
		##for study in studies:
			##subjects = get_subjects(mod,study,subjType)
                        subjects = readInput.readList('/cluster/kuperberg/SemPrMM/MRI/scripts/input/' +listPrefix)
			print(subjects)
			print(study)
			study_results = parse_study(mod,study,subjects)
			with open('/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/'+mod+'_'+listPrefix+'_'+study+'_accuracy-short.log','w') as f:
                                #print f
				#write out header
				f.write('sub:\t\t')
				for code in code_names[study]:
					f.write(code+'\t\t')
				f.write('AllTasks\n')	
				for sub in sorted(study_results.keys()):
					num = den = 0
					f.write(sub+':\t\t')
					results = study_results[sub]
					#print(study,sub,results)
					#sort codes numerically
					codes = sorted([int(key) for key in results.keys()])
					num = sum([item[0] for code,item in results.items() if int(code) in studies_tasks[study]])
					den = sum([item[1] for code,item in results.items() if int(code) in studies_tasks[study]])
					sorted_results = [float(results[str(code)][0])/float(results[str(code)][1]) for code in codes]
					for result in sorted_results:
						f.write(str(round(result,3))+'\t\t')
					f.write(str(round(float(num)/den,3))+'\n')
                        mriaccuracy2R(mod,study,subjType, listPrefix)
        print("Completed. See results in /MRI/results/behavioral_accuracy/R/ folder")




						
if __name__ == "__main__":
	main(sys.argv[1], sys.argv[2], sys.argv[3])
