tests-accessing
testCellAtAt
	grid indicesDo: [ :row :column |
		self assert: (grid cellAt: row at: column) equals: (grid matrix at: row at: column) ].
	
	self
		should: [ grid cellAt: 0 at: 1 ] raise: Error;
		should: [ grid cellAt: 1 at: 0 ] raise: Error;
		should: [ grid cellAt: grid rows + 1 at: 1 ] raise: Error;
		should: [ grid cellAt: 1 at: grid columns + 1 ] raise: Error