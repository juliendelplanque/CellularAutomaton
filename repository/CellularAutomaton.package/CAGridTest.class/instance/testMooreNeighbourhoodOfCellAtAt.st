tests-accessing
testMooreNeighbourhoodOfCellAtAt
	| expected |
	expected := OrderedCollection new.
	grid mooreNeighbourhoodIndicesOfCellAt: 1 at: 1 do: [ :row :column |
		expected add: (grid cellAt: row at: column) ].
	
	self
		assertCollection: (grid mooreNeighbourhoodOfCellAt: 1 at: 1) equals: expected asArray