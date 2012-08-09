behav_stats_mri_AXCPT <-function(subjType){

###This function outputs behavioral stats for the MRI session
###Currently focuses on the nsect prime and Target trials only

filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',subjType,'_mri_axcpt_AXCPT_accuracy_new.df',sep="")
load(fileName)

outFile <- paste(filePath,'MRI_',subjType,'_mri_axcpt_AXCPT_acc_stats_new.txt',sep="")
sink(outFile)

##exclude subjects for whom there were errors in behavioral data recording
#behavData.all = subset(behavData.all, subj != 'ya10' & subj != 'ya8')

###################################################
#################DESCRIPTIVE STATS#################

behavData.all.aov = aov(acc ~ cond,data=behavData.all)

numSubj <-nlevels(factor(behavData.all$subj, exclude= NA))
print(paste("Table of Mean Accuracies, n:", numSubj,sep=" "))
print(model.tables(behavData.all.aov, "means"), digits = 5)

###########
###########PLOTS

error.bar <- function(x, y, upper, lower=upper, length=0.1,...)
	{
		if(length(x) != length(y) | length(y) !=length(lower) | length(lower) != length(upper))
		stop("vectors must be same length")
		arrows(x,y+upper, x, y-lower, angle=90, code=3, length=length, ...)
	}



behavData.all.mean <- tapply(behavData.all$acc, behavData.all$cond, mean)
behavData.all.sd = tapply(behavData.all$acc, behavData.all$cond, sd)
behavData.all.n = tapply(behavData.all$acc, behavData.all$cond,length)
print("n")
print(behavData.all.n)
behavData.all.stderr = behavData.all.sd/sqrt(behavData.all.n)  #for error bars	

	##plotting
	##for documentation see http://www.stat.berkeley.edu/classes/s133/saving.html
	#pdf(paste(filePath, 'barplots/',subjType,'_AXCPT_acc.pdf', sep=''))
	bp <- barplot(behavData.all.mean, beside=TRUE, main= paste("AXCPT"),ylim=c(0, 1))
	error.bar(bp, behavData.all.mean, behavData.all.stderr)
	
	
	#dev.off()

##################################################
##################ANOVAS##########################

library('ez')

####COMPARE BX and BY#####
behavData.bxby = subset(behavData.all, cond == 'Acc_BX' | cond == 'Acc_BY')
eztest <-ezANOVA(data=behavData.bxby,dv = .(acc),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
print("Paired comparison BX vs BY")
print(eztest)

####COMPARE BX and BY#####
behavData.ayby = subset(behavData.all, cond == 'Acc_AY' | cond == 'Acc_BY')
eztest <-ezANOVA(data=behavData.ayby,dv = .(acc),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
print("Paired comparison AY vs BY")
print(eztest)

library('ez')
eztest <-ezANOVA(data=behavData.all,dv = .(acc),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
print("Type III ANOVA on accuracy depending condition")
print(eztest)

sink()

}