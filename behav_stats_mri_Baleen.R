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

###################################################

L_Tar<-behavData.animal[behavData.animal$cond == "LAnTar", ]
print(paste("L_Tar_Animal_MeanAccuracy:", round(mean(L_Tar$acc),5), sep=" "))

L_Pr<-behavData.animal[behavData.animal$cond == "LAnPr", ]
print(paste("L_Pr_Animal_MeanAccuracy:", round(mean(L_Pr$acc),5), sep=" "))

H_Tar<-behavData.animal[behavData.animal$cond == "HAnTar", ]
print(paste("H_Tar_Animal_MeanAccuracy:", round(mean(H_Tar$acc),5), sep=" "))

H_Pr<-behavData.animal[behavData.animal$cond == "HAnPr", ]
print(paste("H_Pr_Animal_MeanAccuracy:", round(mean(H_Pr$acc),5), sep=" "))

L_PrTar<-behavData.animal[behavData.animal$cond == "LAnTar" | behavData.animal$cond == "LAnPr", ]
print(paste("L_PrTar_Animal_MeanAccuracy:", round(mean(L_PrTar$acc),5), sep=" "))

H_PrTar<-behavData.animal[behavData.animal$cond == "HAnTar" | behavData.animal$cond == "HAnPr", ]
print(paste("H_PrTar_Animal_MeanAccuracy:", round(mean(H_PrTar$acc),5), sep=" "))

LH_Pr<-behavData.animal[behavData.animal$cond== "LAnPr" | behavData.animal$cond == "HAnPr", ]
print(paste("LH_Pr_Animal_MeanAccuracy:", round(mean(LH_Pr$acc),5), sep=" "))

LH_Tar<-behavData.animal[behavData.animal$cond== "LAnTar" | behavData.animal$cond == "HAnTar", ]
print(paste("LH_Tar_Animal_MeanAccuracy:", round(mean(LH_Tar$acc),5), sep=" "))

##compute overall Mean Accuracy
print(paste("LH_PrTar_Animal_MeanAccuracy:", round(mean(behavData.animal$acc),5), sep=" "))

##compute overall SD
print(paste("LH_PrTar_Animal_SD:",round(sd(behavData.animal$acc),3), sep=" "))


#################DESCRIPTIVE STATS#################

##Factorize data and print descriptive means
##behavData.animal$prop<-factor(behavData.animal$cond,exclude=NULL);
##levels(behavData.animal$prop)<-c("hi","hi","lo","lo");
##behavData.animal$pos <-factor(behavData.animal$cond, exclude=NULL);
##levels(behavData.animal$pos) <-c("prime","targ","prime","targ")

##behavData.animal.aov = aov(acc ~ prop * pos + Error(subj/(prop * pos)),data=behavData.animal)

##numSubj <-nlevels(factor(behavData.all$subj, exclude= NA))
##print(paste("Table of Mean Accuracies, n:", numSubj,sep=" "))
##print(model.tables(behavData.animal.aov, "means"), digits = 5)

##compute overall SD
##LPHPprimetarg<-behavData.all[behavData.all$cond == "LAnPr" | behavData.all$cond == "LAnTar" | behavData.all$cond == "HAnPr" | behavData.all$cond == "HAnTar", ]
##LPHPprimetargSD<-sd(LPHPprimetarg$acc)
##print(paste("LPHPprimetargSD:",round(LPHPprimetargSD,3),sep=" "))

##################################################
##################ANOVAS##########################

##library('ez')
##eztest <-ezANOVA(data=behavData.animal,dv = .(acc),wid=.(subj),within=.(prop, pos),type=3,detailed=TRUE)
##print(eztest)



sink()
}
