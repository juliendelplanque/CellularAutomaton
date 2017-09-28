running
run
	| writer |
	writer := GIFReadWriter on: (FileStream forceNewFileNamed: self file fullName).
	writer loopCount: 0.
	writer delay: self delayBetweenTwoIterations asMilliSeconds / 10. "Requires hundredths of second."
	self iterationsCount timesRepeat: [ 
		writer nextPutImage: (self generateFormFromGrid: self grid).
		grid := grid nextGrid ].
	writer close