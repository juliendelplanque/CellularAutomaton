deciding
nextStateOfCellAt: row at: column in: grid
	"
	- Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.
	- Any live cell with two or three live neighbours lives on to the next generation.
	- Any live cell with more than three live neighbours dies, as if by overpopulation.
	- Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction."
	| cell aliveNeighbours |
	cell := grid cellAt: row at: column.
	aliveNeighbours := grid aliveNeighboursOfCellAt: row at: column.
	
	(cell isDead and: [ aliveNeighbours size = 3 ])
		ifTrue: [ ^ #alive ].
	
	(cell isAlive and: [ aliveNeighbours size between: 2 and: 3 ])
		ifTrue: [ ^ #alive ].
	
	^ #dead