error.bar <- function(x, y, upper, lower=upper, length=0.1,...)
{
	if(length(x) != length(y) | length(y) !=length(lower) | length(lower) != length(upper))
	stop("vectors must be same length")
	arrows(x,y+upper, x, y-lower, angle=90, code=3, length=length, ...)
}



roi_barplot_hemSummary <-function(subj_gp, exp,hem){

	dataPath = '/cluster/kuperberg/SemPrMM/MRI/results/roi_fsfast/R/'
	
	load(paste(dataPath,subj_gp,'_',exp,'_roiTable.df',sep=''))
	##subsetting
	roiData.hem = subset(roiData.all, hemCode==hem, select=c(subj, cond, roi, signal))
	attach(roiData.hem)
	roiData.hem.mean = tapply(signal, list(cond, roi), mean)
	roiData.hem.sd = tapply(signal, list(cond, roi), sd)
	roiData.hem.n = tapply(signal, list(cond,roi),length)
	roiData.hem.stderr = roiData.hem.sd/sqrt(roiData.hem.n)  #for error bars	
	detach(roiData.hem)
	
	rownames(roiData.hem.mean)
	
	labelx = cbind('BA44','BA47','BA45','AG','ITG','MTG','STG','TP','ITS','STS')
	
	##plotting
	##for documentation see http://www.stat.berkeley.edu/classes/s133/saving.html
	pdf(paste(dataPath, 'barplots/',subj_gp,'_', exp,'_', hem, '.pdf', sep=''))
	bp <-barplot(roiData.hem.mean, beside=TRUE, main= paste(hem,'n=',roiData.hem.n[1]), legend=rownames(roiData.hem.mean), names.arg=labelx, cex.names=0.8, ylim=c(-.15, .15))
	error.bar(bp, roiData.hem.mean, roiData.hem.stderr)

	
	
	dev.off()
	
	
	
	#aggLabel = aggregate(signal, by=list(cond, roi, hemCode), FUN=mean, na.rm=TRUE)

}