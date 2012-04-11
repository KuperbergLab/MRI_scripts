behav_stats_mri_MaskedMM <-function(subjType){

###This function outputs behavioral stats for the MRI session
###Currently focuses on the nsect prime and Target trials only

filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',subjType,'_mri_maskedmm_MaskedMM_accuracy.df',sep="")
load(fileName)

outFile <- paste(filePath,'MRI_',subjType,'_mri_maskedmm_MaskedMM_acc_stats.txt',sep="")
sink(outFile)

##exclude subjects for whom there were errors in behavioral data recording
behavData.all = subset(behavData.all, subj != 'ya10' & subj != 'ya8')

##include only insect trials
behavData.insect<-behavData.all[behavData.all$cond == "InsPr" | behavData.all$cond == "InsTar", ] 


###################################################
#################DESCRIPTIVE STATS#################

behavData.insect$pos <-factor(behavData.insect$cond, exclude=NULL);
levels(behavData.insect$pos) <-c("prime","targ")
behavData.insect.aov = aov(acc ~ pos,data=behavData.insect)

numSubj <-nlevels(factor(behavData.all$subj, exclude= NA))
print(paste("Table of Mean Accuracies, n:", numSubj,sep=" "))
print(model.tables(behavData.insect.aov, "means"), digits = 5)



##################################################
##################ANOVAS##########################

library('ez')
eztest <-ezANOVA(data=behavData.insect,dv = .(acc),wid=.(subj),within=.(pos),type=3,detailed=TRUE)
print("Type III ANOVA on accuracy depending on position of target")
print(eztest)

sink()

}