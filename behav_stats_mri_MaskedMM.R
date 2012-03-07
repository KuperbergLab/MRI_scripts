behav_stats_mri_MaskedMM <-function(subjType){

###This function outputs behavioral stats for the MRI session
###Currently focuses on the nsect prime and Target trials only

filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',subjType,'_MaskedMM_accuracy.df',sep="")
load(fileName)

outFile <- paste(filePath,'MRI_',subjType,'_MaskedMM_acc_stats.txt',sep="")
sink(outFile)

##exclude subjects for whom there were errors in behavioral data recording
##behavData.all = subset(behavData.all, subj != 'ya1')

##include only animal trials
behavData.maskedmm<-behavData.all[behavData.all$cond == "InsPr" | behavData.all$cond == "InsTar", ] 


###################################################
#################DESCRIPTIVE STATS#################
Instar<-behavData.maskedmm[behavData.maskedmm$cond == "InsTar", ]
print(paste("InsectTarget_MeanAccuracy:", round(mean(Instar$acc),5), sep=" "))

Insprime<-behavData.maskedmm[behavData.maskedmm$cond == "InsPr", ]
print(paste("InsectPrime_MeanAccuracy:", round(mean(Insprime$acc),5), sep=" "))

##compute overall Mean Accuracy
print(paste("InsectTargetPrime_MeanAccuracy:", round(mean(behavData.maskedmm$acc),5), sep=" "))

##compute overall SD
print(paste("InsectprimetargSD:",round(sd(behavData.maskedmm$acc),3), sep=" "))


sink()
}