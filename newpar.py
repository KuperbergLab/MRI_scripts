import readInput
import writeOutput

inFile = 'baleenhp.par'
outFile = 'baleenhp_new.par'

orig = readInput.readTable(inFile)

newTable = []
for row in orig:
	newrow = []
	newrow.append(row[0])
	newrow.append(7) #code
	newrow.append(1) #duration
	newrow.append(1.0) #weight
	newrow.append('Prime')
	
	origrow = row
	origrow[0] = int(row[0])+1  #time
	origrow[2] = 1 #duration


	newTable.append(newrow)
	newTable.append(origrow)

writeOutput.writeTable(outFile,newTable)