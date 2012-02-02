roi_anova_ATLLoc <-function(subj_gp, label){

	library('ez')

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	load(paste(dataPath,subj_gp,'_ATLLoc_roiTable.df',sep=''))

	outfile <-paste(dataPath,subj_gp,"_ATLLoc_",label,"_main_av.txt",sep="")
	sink(outfile)

	#############
	#############COMPUTE OVERALL 2x3 ANOVA FOR 3 TARGET CONDITIONS

	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x3 with all 3 conditions")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR SENTENCES VS NONWORDS

	roiData.label.c1c3 = subset(roiData.label, cond=='Sentences' | cond=='Nonwords', select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 with sentences vs. nonword conditions")
	print(eztest)


	#############
	############COMPUTE PAIRWISE COMPARISONS FOR SENTENCES VS NONWORDS IN EACH HEMISPHERE

	roiData.label.c1c3.lh = subset(roiData.label.c1c3, hemCode=='lh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3.lh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("left: sentences vs. nonwords")
	print(eztest)

	roiData.label.c1c3.rh = subset(roiData.label.c1c3, hemCode=='rh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.c1c3.rh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("right: sentences vs. nonwords")
	print(eztest)


	##################	
	##Grab marginal means
	roiData.label.aov = aov(signal ~ cond * hemCode + Error(subj/(cond * hemCode)),data=roiData.label)

	print(model.tables(roiData.label.aov, "means"), digits = 5)


	sink()

}