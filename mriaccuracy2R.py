import sys
import os 
import os.path
import readInput
from operator import itemgetter, attrgetter

# usage: python mriaccuracy.py BaleenMM or MaskedMM or AXCPT

def mriaccuracy2R(study):
        data_path = '/cluster/kuperberg/SemPrMM/MRI/'
        inFile1 = data_path + 'results/behavioral_accuracy/' + 'MRI_' + str(study)+"_accuracy.log"
        outFile1 = data_path + 'results/behavioral_accuracy/R/' + 'MRI_' + str(study)+"_accuracy4R.log"    
        print(inFile1)
        
##     if (subjType == 'ac'):
##         subject_filename = data_path + 'scripts/function_inputs/ac.meg.all.txt'
##     if (subjType == 'sc'):
##         subject_filename = data_path + 'scripts/function_inputs/sc.meg.all.txt'
##     if (subjType == 'ya'):
##         subject_filename = data_path + 'scripts/function_inputs/ya.meg.all.txt'
##     subject_list = readInput.readList(subject_filename)
##     print subject_list
##
##     for subject in subject_list:
  
#To Find the total number of rejected trials, and percentage inclusion
        #subjID = str(subjType)+ str(subject)
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
        print(runCount)
        print(cond_len)

        myFile2 = open(outFile1, "w")
        myFile2.write("Sub:\t\tCond\t\tAccuracy\n")	
        for i in range(1, runCount):
               lineTemp = (dataTable1[i])
               print(lineTemp)
               #print(lineTemp[])
               for j in range(1,cond_len):
                     myFile2.write(lineTemp[0] + '\t\t')
                     myFile2.write(header[j] + '\t\t')
                     myFile2.write(lineTemp[j])
                     myFile2.write('\n')
        print("Completed. See result in /MRI/results/behavioral_accuracy/R/ folder")

if __name__ == "__main__":
   
   mriaccuracy2R(sys.argv[1])

     
