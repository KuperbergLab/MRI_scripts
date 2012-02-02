roi_anova_Masked <-function(subj_gp, label){

	library('ez')

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	load(paste(dataPath,subj_gp,'_MaskedMM_roiTable.df',sep=''))

	outfile <-paste(dataPath,subj_gp,"_MaskedMM_",label,"_main_av.txt",sep="")
	sink(outfile)

	#############
	#############COMPUTE OVERALL 2x3 ANOVA FOR 3 TARGET CONDITIONS

	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x3 with all 3 conditions")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR UNRELATED V RELATED

	roiData.label.c1c3 = subset(roiData.label, cond=='Direct' | cond=='Unrelated', select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 with unrelated vs. related conditions")
	print(eztest)


	#############
	############COMPUTE PAIRWISE COMPARISONS FOR UNRELATED V RELATED IN EACH HEMISPHERE

	roiData.label.c1c3.lh = subset(roiData.label.c1c3, hemCode=='lh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3.lh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("left: unrelated vs. related")
	print(eztest)

	roiData.label.c1c3.rh = subset(roiData.label.c1c3, hemCode=='rh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3.rh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("right: unrelated vs. related")
	print(eztest)






	##################	
	##Grab marginal means
	roiData.label.aov = aov(signal ~ cond * hemCode + Error(subj/(cond * hemCode)),data=roiData.label)

	print(model.tables(roiData.label.aov, "means"), digits = 5)


	sink()

}