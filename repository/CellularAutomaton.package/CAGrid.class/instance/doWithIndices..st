enumerating
doWithIndices: aBlock
	"Iterates on all the cells and execute aBlock with as parameters
		1. the current cell
		2. the row number of the cell
		3. the column number of the cell
	"
	self indicesDo: [ :row :column |
		aBlock value: (self cellAt: row at: column) value: row value: column ]