roi_save_df_main <-function(subj_gp, exp){
	
filePath <- "/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/"
fileName <- paste(filePath,subj_gp,"_",exp,"_roiTable",sep="")
buffer<-read.table(fileName)
roiData.all<-data.frame(subj=factor(buffer$V1),cond=factor(buffer$V2),roi=factor(buffer$V3),hemCode=factor(buffer$V4),signal=buffer$V5)


outFile <- paste(filePath,subj_gp,"_",exp,"_roiTable",".df",sep="")
save(roiData.all,file=outFile)
}