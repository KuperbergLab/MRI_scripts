behav_save_df_mri <-function(listPrefix,exp){
	
filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/behavioral_accuracy/R/"
fileName <- paste(filePath,'MRI_',listPrefix,'_',exp,"_accuracy_long_new.log",sep="")
buffer<-read.table(skip=1, fileName, header=FALSE)
behavData.all<-data.frame(subj=factor(buffer$V1),cond=factor(buffer$V2),acc=buffer$V3)

outFile <-paste(filePath, 'MRI_', listPrefix, '_', exp, '_accuracy_long_new.df', sep="")
save(behavData.all, file=outFile)

}
