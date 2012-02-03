roi_anova_AXCPT <-function(subj_gp, label){

	library('ez')

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	load(paste(dataPath,subj_gp,'_AXCPT_roiTable.df',sep=''))

	outfile <-paste(dataPath,subj_gp,"_AXCPT_",label,"_main_av.txt",sep="")
	sink(outfile)

	#############
	#############COMPUTE OVERALL 2x4 ANOVA FOR 4 TARGET CONDITIONS

	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x4 with all 3 conditions")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR AY VS BY

	roiData.label.ayby = subset(roiData.label, cond=='AY' | cond=='BY', select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label.ayby,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 with AY vs BY conditions")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR BX VS BY

	roiData.label.bxby = subset(roiData.label, cond=='BX' | cond=='BY', select=c(subj, cond, hemCode, signal))

	eztest <-ezANOVA(data=roiData.label.bxby,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 with BX vs BY conditions")
	print(eztest)


	#############
	############COMPUTE PAIRWISE COMPARISONS FOR AY V BY IN EACH HEMISPHERE

	roiData.label.ayby.lh = subset(roiData.label.ayby, hemCode=='lh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.ayby.lh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("left: AY vs BY")
	print(eztest)

	roiData.label.ayby.rh = subset(roiData.label.ayby, hemCode=='rh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.ayby.rh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("right: AY vs BY")
	print(eztest)


	#############
	############COMPUTE PAIRWISE COMPARISONS FOR BX V BY IN EACH HEMISPHERE

	roiData.label.bxby.lh = subset(roiData.label.bxby, hemCode=='lh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.bxby.lh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("left: BX vs BY")
	print(eztest)

	roiData.label.bxby.rh = subset(roiData.label.ayby, hemCode=='rh', select=c(subj, cond, signal))

	eztest <-ezANOVA(data=roiData.label.bxby.rh,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("right: BX vs BY")
	print(eztest)







	##################	
	##Grab marginal means
	roiData.label.aov = aov(signal ~ cond * hemCode + Error(subj/(cond * hemCode)),data=roiData.label)

	print(model.tables(roiData.label.aov, "means"), digits = 5)


	sink()

}