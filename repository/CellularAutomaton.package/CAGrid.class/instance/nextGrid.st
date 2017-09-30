computation
nextGrid
	"Compute the next grid using the #rules."
	| newGrid |
	newGrid := self class rows: self rows columns: self columns.
	newGrid doWithIndices: [ :cell :row :column |
		cell state: (self rules nextStateOfCellAt: row at: column in: self) ].
	^ newGrid
		rules: self rules copy;
		yourself