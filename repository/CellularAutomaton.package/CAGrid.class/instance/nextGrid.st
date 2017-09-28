computation
nextGrid
	"Compute the next grid using the #rules."
	| newGrid |
	newGrid := self class rows: self rows columns: self columns.
	self matrix indicesDo: [ :row :column |
		(newGrid cellAt: row at: column) state: (self rules nextStateOfCellAt: row at: column in: self) ].
	^ newGrid
		rules: self rules copy;
		yourself