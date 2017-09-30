enumerating
indicesDo: aBlock
	"Iterates on all the cells and execute aBlock with as parameters
		1. the row number of the cell
		2. the column number of the cell
	"
	self matrix indicesDo: aBlock