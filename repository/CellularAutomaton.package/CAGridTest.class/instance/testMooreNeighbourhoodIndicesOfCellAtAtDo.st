tests-accessing
testMooreNeighbourhoodIndicesOfCellAtAtDo
	| result |
	result := OrderedCollection new.
	grid mooreNeighbourhoodIndicesOfCellAt: 2 at: 2 do: [ :row :column |
		result add: row @ column ].
	
	self
		assertCollection: result asArray equals: { 1@1 . 1@2 . 1@3 . 2@1 . 2@3 . 3@1 . 3@2 . 3@3 }.
		
	result := OrderedCollection new.
	grid mooreNeighbourhoodIndicesOfCellAt: 1 at: 1 do: [ :row :column |
		result add: row @ column ].
	
	self
		assertCollection: result asArray equals: { 5@10 . 5@1 . 5@2 . 1@10 . 1@2 . 2@10 . 2@1 . 2@2 }.