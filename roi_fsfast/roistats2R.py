import sys
import os
import writeOutput
import readInput

##This script takes as input the roi fsfast table output by make_func_roi_results.py, and outputs
##the same data in long format appropriate for R

##Usage ex: python roistats2R.py ya ATLLoc

def roistats2R(subj_gp, exp):

        tableLength=0
        dataTable=lineTemp=line=Con=dataLine=[]
        allData=[]
        Contrasts = []
        subj = []
        hem = ['lh', 'rh']
        roiName = []
        
        inFile = "/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/roi_summary/" + subj_gp +"_" + exp +"FullTable.txt"
        dataTable = readInput.readTable(inFile)
        tableLength = len(dataTable)     
        
        ##parse the data to figure out number of contrasts, rois, and subjects
        for i in range(1, tableLength):   #skip the header row
            lineTemp = dataTable[i]
            Con = dataTable[0]
            if len(lineTemp)<6:
                   roiName.append(str(lineTemp[2]))
            elif len(lineTemp)>4:
                   subj.append(lineTemp[0])
                   
        subj_num = (len(subj)/len(roiName))
        
		##Get out the contrasts
        numContrasts = (len(Con)-1)/2   ##figure out how many contrasts there are
        for c in range(numContrasts):
        	conIndex = c*2+1
        	[Con[conIndex],x] = str.split(str(Con[conIndex]), '_')
        	Contrasts.append(Con[conIndex])
##        print Contrasts

        i = 0
        for i in range(1, tableLength):  #skip the header row
             line = dataTable[i]
             curr_subj = line[0]
             if len(line) < 4:  ##This is the beginning of a new label block so update current label
                          curr_label = line[2]
##                          print curr_label
             if len(line) > 4:
                          for c in range(numContrasts):
                                        for m in [0, 1]:
													curr_contrast = str(Contrasts[c])
													curr_hem = hem[m]
													curr_signal = line[c*2+1+m]  #for each contrast, this will find correct signal
##													print c*2+1+m
													dataLine = [curr_subj, curr_contrast, curr_label, curr_hem, curr_signal]
													allData.append(dataLine)
													dataLine = []
                                                        

        outFile = "/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/" + subj_gp +"_" + exp + "_" + "roiTable.txt"                                              
        writeOutput.writeTable(outFile, allData)                                            


        
if __name__ == "__main__":
        
        roistats2R(sys.argv[1],sys.argv[2])
