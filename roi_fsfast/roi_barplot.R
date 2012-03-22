error.bar <- function(x, y, upper, lower=upper, length=0.1,...)
	{
		if(length(x) != length(y) | length(y) !=length(lower) | length(lower) != length(upper))
		stop("vectors must be same length")
		arrows(x,y+upper, x, y-lower, angle=90, code=3, length=length, ...)
	}


roi_barplot <-function(subj_gp, exp, label){

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	load(paste(dataPath,subj_gp,'_',exp,'_roiTable.df',sep=''))

	##subsetting  ##& cond != 'AnimalTarget'
	roiData.label = subset(roiData.all, roi==label, select=c(subj, cond, hemCode, signal))
	roiData.label <- droplevels(roiData.label)
	attach(roiData.label)
	roiData.label.mean = tapply(signal, list(cond, hemCode), mean)
	roiData.label.sd = tapply(signal, list(cond, hemCode), sd)
	roiData.label.n = tapply(signal, list(cond,hemCode),length)
	roiData.label.stderr = roiData.label.sd/sqrt(roiData.label.n)  #for error bars	
	detach(roiData.label)
	
	##plotting
	##for documentation see http://www.stat.berkeley.edu/classes/s133/saving.html
	pdf(paste(dataPath, 'barplots/',subj_gp,'_', exp,'_', label, '.pdf', sep=''))
	bp <- barplot(roiData.label.mean, beside=TRUE, main= paste(exp,label),ylim=c(-.05, .05))
	error.bar(bp, roiData.label.mean, roiData.label.stderr)
	
	
	dev.off()
	#aggLabel = aggregate(signal, by=list(cond, roi, hemCode), FUN=mean, na.rm=TRUE)

}