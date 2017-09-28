accessing
aliveNeighboursOfCellAt: row at: column
	^ (self neighboursOfCellAt: row at: column) reject: #isDead