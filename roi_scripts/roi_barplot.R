roi_barplot <-function(subj_gp, exp, label){

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	
	load(paste(dataPath,subj_gp,'_',exp,'_roiTable.df',sep=''))
	##subsetting
	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, hemCode, signal))
	attach(roiData.label)
	roiData.label.table = tapply(signal, list(cond, hemCode), mean)
	detach(roiData.label)
	
	##plotting
	##for documentation see http://www.stat.berkeley.edu/classes/s133/saving.html
	pdf(paste(dataPath, 'barplots/',subj_gp,'_', exp,'_', label, '.pdf', sep=''))
	barplot(roiData.label.table, beside=TRUE, main= label)
	dev.off()
	
	
	
	#aggLabel = aggregate(signal, by=list(cond, roi, hemCode), FUN=mean, na.rm=TRUE)

}