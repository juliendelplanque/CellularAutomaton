tests-accessing
testAliveMooreNeighbourhoodOfCellAtAt
	self
		assert: (grid aliveMooreNeighbourhoodOfCellAt: 1 at: 1) isEmpty.
		
	(grid cellAt: 1 at: 1) beAlive.
	
	self
		assert: (grid aliveMooreNeighbourhoodOfCellAt: 2 at: 2) size equals: 1;
		assert: (grid aliveMooreNeighbourhoodOfCellAt: 2 at: 2) first equals: (grid cellAt: 1 at: 1)