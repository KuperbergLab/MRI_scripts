behav_stats_mri_Baleen <-function(subjType){

###This function outputs behavioral stats for the MRI session
###Currently focuses on the animal (go) trials only
	
filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',subjType,'_BaleenMM_accuracy.df',sep="")
load(fileName)

outFile <- paste(filePath,'MRI_',subjType,'_Baleen_acc_stats.txt',sep="")
sink(outFile)

##exclude subjects for whom there were errors in behavioral data recording
behavData.all = subset(behavData.all, subj != 'ya13')

##include only animal trials
behavData.animal<-behavData.all[behavData.all$cond == "LAnPr" | behavData.all$cond == "LAnTar" | behavData.all$cond == "HAnPr" | behavData.all$cond == "HAnTar", ]

#################DESCRIPTIVE STATS#################

##Factorize data and print descriptive means
behavData.animal$prop<-factor(behavData.animal$cond,exclude=NULL);
levels(behavData.animal$prop)<-c("hi","hi","lo","lo");
behavData.animal$pos <-factor(behavData.animal$cond, exclude=NULL);
levels(behavData.animal$pos) <-c("prime","targ","prime","targ")

behavData.animal.aov = aov(acc ~ prop * pos + Error(subj/(prop * pos)),data=behavData.animal)

numSubj <-nlevels(factor(behavData.all$subj, exclude= NA))
print(paste("Table of Mean Accuracies, n:", numSubj,sep=" "))
print(model.tables(behavData.animal.aov, "means"), digits = 5)

##compute overall SD
LPHPprimetarg<-behavData.all[behavData.all$cond == "LAnPr" | behavData.all$cond == "LAnTar" | behavData.all$cond == "HAnPr" | behavData.all$cond == "HAnTar", ]
LPHPprimetargSD<-sd(LPHPprimetarg$acc)
print(paste("LPHPprimetargSD:",round(LPHPprimetargSD,3),sep=" "))

##################################################
##################ANOVAS##########################

library('ez')
eztest <-ezANOVA(data=behavData.animal,dv = .(acc),wid=.(subj),within=.(prop, pos),type=3,detailed=TRUE)
print(eztest)



sink()
}
