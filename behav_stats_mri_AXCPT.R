behav_stats_mri_AXCPT <-function(subjType){

###This function outputs behavioral stats for the MRI session
###Currently focuses on the nsect prime and Target trials only

filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',subjType,'_mri_axcpt_AXCPT_accuracy.df',sep="")
load(fileName)

outFile <- paste(filePath,'MRI_',subjType,'_mri_axcpt_AXCPT_acc_stats.txt',sep="")
sink(outFile)

##exclude subjects for whom there were errors in behavioral data recording
#behavData.all = subset(behavData.all, subj != 'ya10' & subj != 'ya8')

###################################################
#################DESCRIPTIVE STATS#################

behavData.all.aov = aov(acc ~ cond,data=behavData.all)

numSubj <-nlevels(factor(behavData.all$subj, exclude= NA))
print(paste("Table of Mean Accuracies, n:", numSubj,sep=" "))
print(model.tables(behavData.all.aov, "means"), digits = 5)



##################################################
##################ANOVAS##########################

library('ez')

####COMPARE BX and BY#####
behavData.bxby = subset(behavData.all, cond == 'BX' | cond == 'BY')
eztest <-ezANOVA(data=behavData.bxby,dv = .(acc),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
print("Paired comparison BX vs BY")
print(eztest)

####COMPARE BX and BY#####
behavData.ayby = subset(behavData.all, cond == 'AY' | cond == 'BY')
eztest <-ezANOVA(data=behavData.ayby,dv = .(acc),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
print("Paired comparison AY vs BY")
print(eztest)

sink()

}