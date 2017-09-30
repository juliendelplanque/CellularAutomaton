accessing
aliveMooreNeighbourhoodOfCellAt: row at: column
	^ (self mooreNeighbourhoodOfCellAt: row at: column) reject: #isDead