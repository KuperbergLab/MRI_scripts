import sys
import os
import writeOutput


def roistats2R(subj_gp, exp):

        trialCount=rtrialCount = r= 0
        dataTable1=lineTemp=line=dataLine=Con=[]
        allData=[]
        Contrasts = []
        subj = []
        hem = ['lh', 'rh']
        roiName = []
        
        
        inFile = "/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/roi_summary/" + subj_gp +"_" + exp +"FullTable.txt"
        myFile1 = open(inFile, "r") 
        temp = 1
        while temp:
           temp = myFile1.readline()
           temp1 = temp.strip() # when I included (' ') it did not return the items as a list, but when I just wrote () it did the trick!
           if temp1:
              temp2 = temp1.split()
              dataTable1.append(temp2) # Save information as a list of items in a DataTable
              trialCount=len(dataTable1)   
        myFile1.close()      
        
        for i in range(1, trialCount):
            lineTemp = dataTable1[i]
            Con = dataTable1[0]
            if len(lineTemp)<6:
                   roiName.append(str(lineTemp[2]))
            elif len(lineTemp)>4:
                   subj.append(lineTemp[0])
                   
        subj_num = (len(subj)/len(roiName))
        [Con[1], x] = str.split(str(Con[1]), '_')
        [Con[3], x] = str.split(str(Con[3]), '_')
        [Con[5], x] = str.split(str(Con[5]), '_')
        Contrasts.append(Con[1])
        Contrasts.append(Con[3])
        Contrasts.append(Con[5])
        print Contrasts
        for i in range(0, subj_num):
                print subj[i]
        
        i = 0
        for i in range(1, trialCount):
             line = dataTable1[i]
             if len(line) < 4:
                          c_label = line[2]
                          print c_label
             if len(line) > 4:
                          count=1  ##for signal values
                          for l in range(0, len(Contrasts)):
                                        for m in [0, 1]:
                                                if count<7:
                                                        c_contrast = str(Contrasts[l])
                                                        c_hem = hem[m]
                                                        c_signal = line[count]
                                                        c_subj = line[0] 
                                                        dataLine = [c_subj, c_contrast, c_label, c_hem, c_signal]
                                                        allData.append(dataLine)
                                                        dataLine = []
                                                        count =count+1
                                                        

        outFile = "/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/" + subj_gp +"_" + exp + "_" + "roiTable"                                              
        writeOutput.writeTable(outFile, allData)                                            

        print allData
        
if __name__ == "__main__":
        
        roistats2R(sys.argv[1],sys.argv[2])
