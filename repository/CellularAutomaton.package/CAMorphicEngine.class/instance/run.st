running
run
	gridMorph := CAGridMorph new.
	gridMorph cellsCount: grid rows * grid columns.

	gridMorph beForGrid: grid.
	(gridMorph openInWindowLabeled: self windowLabel)
		beUnresizeable.
	thread := [ 
		self iterationsCount timesRepeat: [ 
			gridMorph beForGrid: (grid := grid nextGrid).
			self delayBetweenTwoIterations wait ] ] forkNamed: 'GOL'.