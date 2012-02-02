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
	############COMPUTE PAIRED COMPARISON FOR EACH HEMISPHERE FOR EACH PROPORTION
	
	roiData.label.2x2.lh.hi = subset(roiData.label.2x2.lh, prop=='hi', select=c(subj, cond, prop, signal))
	eztest <-ezANOVA(data=roiData.label.2x2.lh.hi,dv = .(signal),wid=.(subj),within=.(cond),type=3,detailed=TRUE)
	print("hi related vs unrelated in left hemisphere")
	print(eztest)


	##################	
	##Grab marginal means
	roiData.label.aov = aov(signal ~ cond * prop * hemCode + Error(subj/(cond * prop * hemCode)),data=roiData.label)

	print(model.tables(roiData.label.aov, "means"), digits = 5)


	sink()

}