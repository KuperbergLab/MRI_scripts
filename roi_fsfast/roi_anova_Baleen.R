roi_anova_Baleen <-function(subj_gp, label){

	library('ez')

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	outfile <-paste(dataPath,subj_gp,"_BaleenAll_",label,"_main_av.txt",sep="")
	sink(outfile)

	##############
	##############LOAD DATA
	load(paste(dataPath,subj_gp,'_BaleenLP_roiTable.df',sep=''))
	lp <- roiData.all
	load(paste(dataPath,subj_gp,'_BaleenHP_roiTable.df',sep=''))
	hp <- roiData.all
	
	###Add proportion factor
	lp$prop <- factor(lp$cond,exclude=NULL)
	levels(lp$prop) <-c("lo","lo","lo")
	hp$prop <- factor(hp$cond,exclude=NULL)
	levels(hp$prop) <-c("hi","hi","hi")
	
	##Concatenate
	roiData.all <- rbind(lp,hp)



	#############
	#############COMPUTE OVERALL 2x2x2 ANOVA FOR PRIME X PROP X HEM

	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, prop, hemCode, signal))
	roiData.label.2x2 = subset(roiData.label, cond != "AnimalTarget", select=c(subj, cond, prop, hemCode, signal))


	eztest <-ezANOVA(data=roiData.label.2x2,dv = .(signal),wid=.(subj),within=.(cond,prop, hemCode),type=3,detailed=TRUE)
	print("2x2x2 prime x prop x hem")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR EACH HEMISPHERE

	roiData.label.2x2.lh = subset(roiData.label.2x2, hemCode=='lh', select=c(subj, cond, prop, signal))
	eztest <-ezANOVA(data=roiData.label.2x2.lh,dv = .(signal),wid=.(subj),within=.(cond,prop),type=3,detailed=TRUE)
	print("2x2 in left hemisphere")
	print(eztest)

	roiData.label.2x2.rh = subset(roiData.label.2x2, hemCode=='rh', select=c(subj, cond, prop, signal))
	eztest <-ezANOVA(data=roiData.label.2x2.rh,dv = .(signal),wid=.(subj),within=.(cond,prop),type=3,detailed=TRUE)
	print("2x2 in right hemisphere")
	print(eztest)

	#############
	############COMPUTE 2x2 ANOVA FOR EACH LEVEL OF PROPORTION

	roiData.label.2x2.lo = subset(roiData.label.2x2, prop=='lo', select=c(subj, cond, hemCode, signal))
	eztest <-ezANOVA(data=roiData.label.2x2.lo,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 in lo prop")
	print(eztest)

	roiData.label.2x2.hi = subset(roiData.label.2x2, prop=='hi', select=c(subj, cond, hemCode, signal))
	eztest <-ezANOVA(data=roiData.label.2x2.hi,dv = .(signal),wid=.(subj),within=.(cond,hemCode),type=3,detailed=TRUE)
	print("2x2 in hi prop")
	print(eztest)


	#############
	#############COMPUTE OVERALL 2x2x2 ANOVA FOR AnimalTarget vs. Unrelated comparison

	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, prop, hemCode, signal))
	roiData.label.2x2 = subset(roiData.label, cond != "Related", select=c(subj, cond, prop, hemCode, signal))


	eztest <-ezANOVA(data=roiData.label.2x2,dv = .(signal),wid=.(subj),within=.(cond,prop, hemCode),type=3,detailed=TRUE)
	print("2x2x2 UnrelatedvsAnimal x prop x hem")
	print(eztest)




	##################	
	##Grab marginal means
	roiData.label.aov = aov(signal ~ cond * prop * hemCode + Error(subj/(cond * prop * hemCode)),data=roiData.label)

	print(model.tables(roiData.label.aov, "means"), digits = 5)


	sink()

}