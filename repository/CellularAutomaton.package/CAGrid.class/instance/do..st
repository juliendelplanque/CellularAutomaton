enumerating
do: aBlock
	"Iterates on all the cells and execute aBlock with the current cell as parameter."
	self doWithIndices: [ :cell :row :column | aBlock value: cell ]