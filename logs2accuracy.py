#!/usr/bin/env python

import os
from glob import glob 

modalities = ['MRI']
studies = ['MaskedMM','BaleenMM','AXCPT']
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
	if study is 'AX-CPT':
		study = 'AXCPT'
	if study not in studies:
		return [study, None]
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
	
def get_subjects(modality,study):
	path = os.path.join('/cluster/kuperberg/SemPrMM/',modality,'vtsd_logs')+os.sep
	all_dirs = [name for name in os.listdir(path) if os.path.isdir(os.path.join(path, name))]
	subs =  [subj for subj in all_dirs if subj.startswith('y')]
	return [sub for sub in subs if len(glob(os.path.join(path,sub,study+'*log'))) > 0]

def main():
	for mod in modalities:
		for study in studies:
			subjects = get_subjects(mod,study)
			study_results = parse_study(mod,study,subjects)
			with open('/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy'+mod+'_'+study+'_accuracy.log','w') as f:
				#write out header
				f.write('sub:\t\t')
				for code in code_names[study]:
					f.write(code+'\t\t')
				f.write('AllTasks\n')	
				for sub in sorted(study_results.keys()):
					num = den = 0
					f.write(sub+':\t\t')
					results = study_results[sub]
					print(study,sub,results)
					#sort codes numerically
					codes = sorted([int(key) for key in results.keys()])
					num = sum([item[0] for code,item in results.items() if int(code) in studies_tasks[study]])
					den = sum([item[1] for code,item in results.items() if int(code) in studies_tasks[study]])
					sorted_results = [float(results[str(code)][0])/float(results[str(code)][1]) for code in codes]
					for result in sorted_results:
						f.write(str(round(result,3))+'\t\t')
					f.write(str(round(float(num)/den,3))+'\n')
						
if __name__ == "__main__":
	main()