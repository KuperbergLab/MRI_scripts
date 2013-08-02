#!/usr/bin/env python

##usage: python logs2accuracy.py ac ac_mri_axcpt AXCPT

##study_rt_max = dict({'BaleenMM':9,'MaskedMM':9,'AXCPT':9})				
import sys
import os 
import os.path
import readInput
from operator import itemgetter, attrgetter
from glob import glob
subjType = sys.argv[1]
listPrefix = sys.argv[2]
study = sys.argv[3]






def mriaccuracy2R(modality,study,subjType, listPrefix):
        data_path = '/cluster/kuperberg/SemPrMM/MRI/'
        inFile1 = data_path + 'results/behavioral_accuracy/' + modality + '_'+ listPrefix + '_' + str(study)+ "_accuracy-short_new.log"
        outFile1 = data_path + 'results/behavioral_accuracy/R/' + modality + '_'+ listPrefix +'_' + str(study)+ "_accuracy_new.log"    
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
               print lineTemp
               for j in range(1,cond_len):
                        myFile2.write(lineTemp[0] + '\t\t')  ##the [:-1] reference removes the closing colon from the subject code
                        myFile2.write(header[j] + '\t\t')
                        myFile2.write(lineTemp[j] + '\n')
                        myFile2.write('\n')
        

						
if __name__ == "__main__":


        
        modalities = ['MRI']
        studies = ['MaskedMM']
        #subjType = ['ac', 'sc', 'ya']
 
        all_lines = 0
        for mod in modalities:
          subjects = readInput.readList('/cluster/kuperberg/SemPrMM/MRI/scripts/input/' +listPrefix)
          print(subjects)
          with open('/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/'+mod+'_'+listPrefix+'_'+study+'_accuracy-short_new.log','w') as d:
            #print(study)
             d.write('sub' + '\t' + 'Acc_AniPrime' + 'Acc_AniTarg' +'\n')

             for sub in subjects:
                acc_anipri_avg = 0.0
                acc_anitar_avg = 0.0
                acc_ani_avg = 0.0
		rt_anipri_avg = 0.0
		rt_anitar_avg = 0.0
		rt_ani_avg = 0.0
                acc_AniPrime = 0.0
                acc_AniTar = 0.0
                acc_Ani = 0.0
                study_logs =  glob(os.path.join('/cluster/kuperberg/SemPrMM/MRI/vtsd_logs',sub,study+'*.vtsd_log'))
		for log in study_logs:
                    all_lines=[]
                    tmin =0.0
                    tmax = 0.0
		    ttar = 0.0
                    x = 0
                    rt_anipri = 0.0
                    rt_anitar = 0.0
                    rt_ani = 0.0
                    acc_anipri = 0.0
                    acc_anitar = 0.0
                    acc_ani = 0.0
                    anipri_trials = 0
                    anitar_trials = 0
                    ani_trials = 0
                    with open(log,'r') as f:
		         all_lines = f.read()
		         all_lines = all_lines.splitlines()
		         all_split = [line.split() for line in all_lines]
		         loglen = len(all_split)
		         for i, line in enumerate(all_split):
                             if i != loglen-1:
                                next_line = all_split[i+1]
                                tmin = int(float(line[5]))  ## 0 ms after the prime onset. testing 
                                tmax = int(float(line[5])) + 5.0 ## 5000 ms after the prime onset, testing this field 
				ttar = int(float(line[5])) + 1.0
                                code = str(line[10])
                                ##print tmax
                               ## print len(code)
                                if code.startswith('4') and len(code) == 3:
                                    anipri_trials+=1
                                elif code.startswith('5') and len(code) == 3:
                                    anitar_trials+=1
                                ani_trials = anipri_trials + anitar_trials
                                if (code.startswith('4') or code.startswith('5')):
                                     if len(code) == 3:
                                           ##print tmin, float(line[12]), float(next_line[12]), tmax
                                           if (tmin < float(line[12]) < tmax) or (tmin < float(next_line[12]) < tmax):
                                                   acc_ani+=1
                                if len(code) == 3: 
                                          if (tmin < float(line[12]) < tmax): 
                                                       if code.startswith('4'):
                                                                rt_anipri += (float(line[12]) - ttar)
                                                                acc_anipri += 1 
                                                       elif code.startswith('5'):
                                                                rt_anitar += (float(line[12]) - ttar)
                                                                acc_anitar += 1
                                                       rt_ani = rt_anipri + rt_anitar
##                                                       acc_ani = acc_anipri + acc_anitar
                                          elif (tmin < float(next_line[12]) < tmax):
                                                       if code.startswith('4'):
                                                                rt_anipri += (float(next_line[12]) - ttar)
                                                                acc_anipri += 1 
                                                       elif code.startswith('5'):
                                                                rt_anitar += (float(next_line[12]) - ttar)
                                                                acc_anitar += 1 
                                                       rt_ani = rt_anipri + rt_anitar
##                                                       acc_ani = acc_anipri + acc_anitar

##                    print sub,acc_anipri, acc_anitar, anipri_trials, anitar_trials
                    rt_anipri_avg = rt_anipri_avg + float(rt_anipri/(anipri_trials))
                    rt_anitar_avg = rt_anitar_avg + float(rt_anitar/(anitar_trials))
                    rt_ani_avg = rt_ani_avg + float(rt_ani/(ani_trials))

		    acc_anipri_avg= acc_anipri_avg + float(acc_anipri/anipri_trials)
		    acc_anitar_avg= acc_anitar_avg + float(acc_anitar/anitar_trials)
		    acc_ani_avg= acc_ani_avg + float(acc_ani/ani_trials)                 
#                    print acc_anipri_avg, anipri_trials, rt_ani_avg,
#		    print acc_anitar_avg, anitar_trials
#		    print sub, acc_anipri_avg, acc_anitar_avg
                    f.close()
##		if subjType =='ac' or subjType =='sc':
                acc_AniPri = round((float(acc_anipri_avg)/2),3)
                acc_AniTar = round((float(acc_anitar_avg)/2),3)
                acc_Ani = round((float(acc_ani_avg)/2),3)
		rt_Ani = round ((float(rt_ani_avg)/2),3)
		print sub, acc_AniPri, acc_AniTar, acc_Ani
##fill the text file with the numbers
                d.write(sub+'\t') #write out header
	        d.write(str(acc_AniPri) + '\t\t')
                d.write(str(acc_AniTar) + '\n')
#                  d.write(str(acc_ani_avg) + '\t')
                #d.write(str(rt_Ani) + '\n')
		##d.write(str(rt_AX) + '\n')

          d.close()
        ##mriaccuracy2R('MRI', study, subjType, listPrefix)  
                




##if ( (odd numbers) <  {RT(current trial) or RT(next trial)} < (multiples of 2(starting with 0)) +1.2ms) )
##    response recorded for Current trial 
