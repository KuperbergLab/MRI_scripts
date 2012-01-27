roi_barplot_hemSummary <-function(subj_gp, exp,hem){

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	
	load(paste(dataPath,subj_gp,'_',exp,'_roiTable.df',sep=''))
	##subsetting
	roiData.hem = subset(roiData.all, hemCode==hem, select=c(subj, cond, roi, signal))
	attach(roiData.hem)
	roiData.hem.table = tapply(signal, list(cond, roi), mean)
	detach(roiData.hem)
	
	rownames(roiData.hem.table)
	
	labelx = cbind('BA44','BA47','BA45','AG','ITG','MTG','STG','TP','ITS','STS')
	
	##plotting
	##for documentation see http://www.stat.berkeley.edu/classes/s133/saving.html
	pdf(paste(dataPath, 'barplots/',subj_gp,'_', exp,'_', hem, '.pdf', sep=''))
	barplot(roiData.hem.table, beside=TRUE, main= hem, legend=rownames(roiData.hem.table), names.arg=labelx, cex.names=0.8, ylim=c(-.1, .1))
	dev.off()
	
	
	
	#aggLabel = aggregate(signal, by=list(cond, roi, hemCode), FUN=mean, na.rm=TRUE)

}